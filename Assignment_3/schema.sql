create database ips;

use ips;

create table Mall(
  Id float not null, 
  URL varchar(50) not null, 
  Address varchar(100) not null, 
  Name varchar(50) not null, 
  Phone varchar(30) not null,
  primary key (Id)
  );
  
create table Entrance(
  GPS varchar(50) not null,
  Address varchar(100) not null,
  MallId float not null,
  primary key (GPS)
);

create table Floor(
  Id float not null,
  Map blob,
  MallId float not null,
  primary key (Id)
);

create table Entrance_Floor(
  FloorId float not null,
  EntranceGPS varchar(50) not null,
  X float not null,
  Y float not null,
  primary key (FloorId, EntranceGPS)
);

create table HallWay(
  X1 float not null,
  Y1 float not null,
  X2 float not null,
  Y2 float not null,
  primary key (X1, Y1, X2, Y2)
);

create table Floor_HallWay(
  FloorId float not null,
  X1 float not null,
  Y1 float not null,
  X2 float not null,
  Y2 float not null,
  primary key (FloorId, X1, Y1, X2, Y2)
);

create table Beacon_Entrance(
  MAC varchar(20) not null,
  EntranceGPS varchar(50) not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, EntranceGPS)
);

create table Beacon_Entrance_Annotation(
  MAC varchar(20) not null,
  EntranceGPS varchar(50) not null,
  NewEntranceGPS varchar(50) not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, EntranceGPS, NewEntranceGPS)
);

create table Beacon_Store(
  MAC varchar(20) not null,
  FedID varchar(50) not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, FedID)
);

create table Beacon_Store_Annotation(
  MAC varchar(20) not null,
  FedID varchar(50) not null,
  NewFedID varchar(50) not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, FedID, NewFedID)
);

create table Beacon_Department(
  MAC varchar(20) not null,
  DeptName varchar(50) not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, DeptName)
);

create table Beacon_Department_Annotation(
  MAC varchar(20) not null,
  DeptName varchar(50) not null,
  NewDeptName varchar(50) not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, DeptName, NewDeptName)
);

create table Beacon_Merchandise(
  MAC varchar(20) not null,
  SKU varchar(20) not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, SKU)
);

create table Beacon_Merchandise_Annotation(
  MAC varchar(20) not null,
  SKU varchar(20) not null,
  NewSKU varchar(20) not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, SKU, NewSKU)
);

create table Beacon_Lift(
  MAC varchar(20) not null,
  LiftId float not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, LiftId)
);

create table Beacon_Lift_Annotation(
  MAC varchar(20) not null,
  LiftId float not null,
  NewLiftId float not null,
  Strength float not null,
  Time float not null,
  X float not null,
  Y float not null,
  primary key(MAC, LiftId, NewLiftId)
);

create table Lift(
  Id float not null,
  primary key (Id)
);

create table Elevator(
  Id float not null,
  primary key (Id)
);

create table Escalator(
  Id float not null,
  primary key (Id)
);

create table Lift_Entrance_HallWay(
  EntranceGPS varchar(50) not null,
  LiftId float not null,
  HW_X1 float not null,
  HW_Y1 float not null,
  HW_X2 float not null,
  HW_Y2 float not null,
  X float not null,
  Y float not null,
  primary key (EntranceGPS, LiftId, HW_X1, HW_Y1, HW_X2, HW_Y2)
);

create table HallWay_HallWay_Lift(
  LiftId float not null,
  HW1_X1 float not null,
  HW1_Y1 float not null,
  HW1_X2 float not null,
  HW1_Y2 float not null,
  HW2_X1 float not null,
  HW2_Y1 float not null,
  HW2_X2 float not null,
  HW2_Y2 float not null,
  X float not null,
  Y float not null,
  primary key (LiftId, HW1_X1, HW1_Y1, HW1_X2, HW1_Y2, HW2_X1, HW2_Y1, HW2_X2, HW2_Y2)
);

create table Beacon(
  MAC varchar(20) not null,
  UUID varchar(20) not null,
  Major varchar(100) not null,
  Minor varchar(100) not null,
  Behavior varchar(100) not null,
  primary key (MAC)
);

create table Store(
  FedID varchar(50) not null,
  Name varchar(30) not null,
  Address varchar(50) not null,
  Phone varchar(20) not null,
  primary key (FedID)
);

create table Floor_Store(
  FloorId float not null,
  FedID varchar(50) not null,
  primary key (FloorId, FedID)
);

create table Department(
  Name varchar(50) not null,
  primary key (Name)
);

create table Department_Store(
  FedID varchar(50) not null,
  DeptName varchar(50) not null,
  Floor float not null,
  primary key(FedID, DeptName)
);

create table Merchandise(
  SKU varchar(20) not null,
  Name varchar(50) not null,
  Brand varchar(50) not null,
  primary key (SKU)
);

create table Merchandise_Department(
  DeptName varchar(50) not null,
  SKU varchar(20) not null,
  QTY float not null,
  primary key(DeptName, SKU)
);

