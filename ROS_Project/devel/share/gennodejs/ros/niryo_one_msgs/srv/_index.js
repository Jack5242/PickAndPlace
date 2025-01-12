
"use strict";

let ChangeHardwareVersion = require('./ChangeHardwareVersion.js')
let ManagePosition = require('./ManagePosition.js')
let ManageSequence = require('./ManageSequence.js')
let GetInt = require('./GetInt.js')
let ChangeMotorConfig = require('./ChangeMotorConfig.js')
let PingDxlTool = require('./PingDxlTool.js')
let GetWorkspaceRatio = require('./GetWorkspaceRatio.js')
let GetDigitalIO = require('./GetDigitalIO.js')
let DebugColorDetection = require('./DebugColorDetection.js')
let GetWorkspaceList = require('./GetWorkspaceList.js')
let UpdateConveyorId = require('./UpdateConveyorId.js')
let SetSequenceAutorun = require('./SetSequenceAutorun.js')
let SetInt = require('./SetInt.js')
let SetString = require('./SetString.js')
let GetWorkspaceRobotPoses = require('./GetWorkspaceRobotPoses.js')
let SetCalibrationCam = require('./SetCalibrationCam.js')
let RobotMove = require('./RobotMove.js')
let PullAirVacuumPump = require('./PullAirVacuumPump.js')
let ObjDetection = require('./ObjDetection.js')
let ManageTrajectory = require('./ManageTrajectory.js')
let SetConveyor = require('./SetConveyor.js')
let SendCustomDxlValue = require('./SendCustomDxlValue.js')
let GetSequenceList = require('./GetSequenceList.js')
let TakePicture = require('./TakePicture.js')
let GetTargetPose = require('./GetTargetPose.js')
let CloseGripper = require('./CloseGripper.js')
let SetLeds = require('./SetLeds.js')
let GetTrajectoryList = require('./GetTrajectoryList.js')
let GetCalibrationCam = require('./GetCalibrationCam.js')
let GetPositionList = require('./GetPositionList.js')
let OpenGripper = require('./OpenGripper.js')
let ControlConveyor = require('./ControlConveyor.js')
let ManageProcess = require('./ManageProcess.js')
let PushAirVacuumPump = require('./PushAirVacuumPump.js')
let DebugMarkers = require('./DebugMarkers.js')
let EditGrip = require('./EditGrip.js')
let EditWorkspace = require('./EditWorkspace.js')
let SetDigitalIO = require('./SetDigitalIO.js')

module.exports = {
  ChangeHardwareVersion: ChangeHardwareVersion,
  ManagePosition: ManagePosition,
  ManageSequence: ManageSequence,
  GetInt: GetInt,
  ChangeMotorConfig: ChangeMotorConfig,
  PingDxlTool: PingDxlTool,
  GetWorkspaceRatio: GetWorkspaceRatio,
  GetDigitalIO: GetDigitalIO,
  DebugColorDetection: DebugColorDetection,
  GetWorkspaceList: GetWorkspaceList,
  UpdateConveyorId: UpdateConveyorId,
  SetSequenceAutorun: SetSequenceAutorun,
  SetInt: SetInt,
  SetString: SetString,
  GetWorkspaceRobotPoses: GetWorkspaceRobotPoses,
  SetCalibrationCam: SetCalibrationCam,
  RobotMove: RobotMove,
  PullAirVacuumPump: PullAirVacuumPump,
  ObjDetection: ObjDetection,
  ManageTrajectory: ManageTrajectory,
  SetConveyor: SetConveyor,
  SendCustomDxlValue: SendCustomDxlValue,
  GetSequenceList: GetSequenceList,
  TakePicture: TakePicture,
  GetTargetPose: GetTargetPose,
  CloseGripper: CloseGripper,
  SetLeds: SetLeds,
  GetTrajectoryList: GetTrajectoryList,
  GetCalibrationCam: GetCalibrationCam,
  GetPositionList: GetPositionList,
  OpenGripper: OpenGripper,
  ControlConveyor: ControlConveyor,
  ManageProcess: ManageProcess,
  PushAirVacuumPump: PushAirVacuumPump,
  DebugMarkers: DebugMarkers,
  EditGrip: EditGrip,
  EditWorkspace: EditWorkspace,
  SetDigitalIO: SetDigitalIO,
};
