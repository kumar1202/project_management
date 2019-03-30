<?php
session_start();
include "connect.php";
$pro=$_SESSION['pronm'];
$teamid=$_POST['teamid'];
$tname=$_SESSION['tname'];
$tidq="SELECT tid from tlogin where name='$tname";
$tidr=mysqli_query($tidq);
$tidres=mysqli_fetch_array($tidr);
$teid=$tidres[0];
$que="SELECT proid from project where proname='$pro'";
$r=mysqli_query($db,$que);
$res=mysqli_fetch_array($r);
$proid=$res[0];
$teamid=$_POST['teamid'];
$q="UPDATE `student` SET `projectid`='$proid',`teamid`='$teamid',`teacherid`='$teid' WHERE 1";

?>a