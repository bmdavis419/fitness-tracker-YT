-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "bodyWeight" DOUBLE PRECISION NOT NULL,
    "height" DOUBLE PRECISION NOT NULL,
    "bodyFat" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Session" (
    "id" SERIAL NOT NULL,
    "day" TEXT NOT NULL,
    "date" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "numExercises" TEXT NOT NULL,
    "duration" DOUBLE PRECISION NOT NULL,
    "userId" TEXT,

    CONSTRAINT "Session_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Lift" (
    "id" SERIAL NOT NULL,
    "duration" DOUBLE PRECISION NOT NULL,
    "sessionId" INTEGER,
    "liftTypeId" INTEGER NOT NULL,

    CONSTRAINT "Lift_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Set" (
    "id" SERIAL NOT NULL,
    "weightLBS" DOUBLE PRECISION NOT NULL,
    "weightKGS" DOUBLE PRECISION NOT NULL,
    "reps" INTEGER NOT NULL,
    "RPE" DOUBLE PRECISION NOT NULL,
    "liftId" INTEGER,

    CONSTRAINT "Set_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LiftType" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "desc" TEXT NOT NULL,
    "userId" TEXT,

    CONSTRAINT "LiftType_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Session" ADD CONSTRAINT "Session_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Lift" ADD CONSTRAINT "Lift_sessionId_fkey" FOREIGN KEY ("sessionId") REFERENCES "Session"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Lift" ADD CONSTRAINT "Lift_liftTypeId_fkey" FOREIGN KEY ("liftTypeId") REFERENCES "LiftType"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Set" ADD CONSTRAINT "Set_liftId_fkey" FOREIGN KEY ("liftId") REFERENCES "Lift"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LiftType" ADD CONSTRAINT "LiftType_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
