# Repositories list
The present table reports a list of all the repositories in this organization, together with a brief description, and their current state.
> [!WARNING]
> Please note that the table is manually updated, thus there could be some inaccuracies.

## Legend
* **ROS version**
    * **1** | Refers to Melodic or, more often, Noetic.
    * **2** | Refers to Humble. Exceptions may apply.
    * **-** | Undetermined. Used also for repos implementing Python modules that are not dependent on a specific ROS version.
* **State**
    * **Maintained** :computer: The repo is being actively used and maintained.
    * **Work in progress** :construction: The repo is being implemented. It might or might not be working in this phase.
    * **Dependency** :toolbox: The repo implements software that is used by other packages.
    * **Archived** :inbox_tray: The repo is related to a concluded project. The code is not being actively used (but as a demo), and the repo is not maintained anymore.

## Repositories
Repo | Description | ROS version | State
|:---:|:---:|:---:|:---:|
`tiago_tools` | Utility scripts to set up and connect TIAGo and at the development PC(s).<br>:round_pushpin: Where you should start, if you are going to work with TIAGo. | 1 and 2 | Maintained :computer:
 | | | <!-- Active (i.e. maintained) --> 
`audio_utils` | Utility nodes and launch files to capture, stream, process and monitor ROS audio data from local PC and/or robot. | 1 | Maintained :computer:
`hri_headset` | Firmware and ROS nodes to control LED strips via Arduino. Used to control TIAGo's headset for visual feedback on turn-taking during interaction. | 1 | Maintained :computer:
`hri_engagement` | ROS package to estimate user engagement status in Human-Robot Interaction based on mutual gaze | 1 | Maintained :computer:
`hri_user_simulation` | ROS package to playback random user utterances to simulate user behavior in Human-Robot Interaction | 1 | Maintained :computer:
`ros_gtts` | ROS wrapper for the Python [gTTS](https://pypi.org/project/gTTS/) package, implementing Text-to-Speech (TTS). | 1 | Maintained :computer:
`ros_speech_recognition` | ROS wrapper for the Python [SpeechRecognition](https://pypi.org/project/SpeechRecognition/) package, implementing Automatic Speech Recognition (ASR). | 1 | Maintained :computer:
`tiago_hri_scenario_framework` | In multi-state Human-Robot Interaction scenarios, some states are common to several scenarios (*e.g.*, navigation, chat). This repo is meant to implement said states, and to provide templates to implement custom states.  | - | Work in progress :construction:
`walking_assistant` | ROS package to enable the use of TIAGo as an assistant to older adults' walk. | 1 | Work in progress :construction:
 | | | <!-- Dependencies --> 
`geometry_utils` | Utility functions implementing geometrical transformation for ROS message type as `Point` and `Quaternion` | 1 | Dependency :toolbox:
`my_ros_utils` | Utility functions to convert from ROS msgs  (*e.g.*, images, pointclouds) to Python datatypes | 1 | Dependency :toolbox:
`ros_numpy` | Fork of [eric-wieser/ros_numpy](https://github.com/eric-wieser/ros_numpy).<br>Utility functions to convert ROS messages to `numpy.arrays` | 1 | Dependency :toolbox:
`tiago_anatomical_motions` | ROS package mapping TIAGo's arm motions to anatomical upper-limb motions according to the ISB convention. Used in [_Bardi et al., "3D upper limbs tracking through inertial sensors: calibration, methodology, and validation", 2023_](https://www.scopus.com/pages/publications/85175877421). Builds on `tiago_simple_motions` package. | 1 |  Dependency :toolbox:
`tiago_simple_motions` | ROS package providing simplified functions to control TIAGo's arm at joint level. | 1 | Dependency :toolbox:
 | | | <!-- Archived --> 
`bo_ros` | ROS wrapper for the Python BOcore package developed at IDSIA-SUPSI, implementing Bayesian Optimization. | 1 | Archived :inbox_tray:
`cognitive_memory` | Human-Robot Interaction scenario used in the tests of [_Pozzi et al., "Robot-Mediated gesture-based memory game for older adult psychophysical stimulation.", 2026_](https://doi.org/10.1109/IROS60139.2025.11247306). | 1 | Archived :inbox_tray:
`leg_tracker` | Forked from [`angusleigh/leg_tracker`](https://github.com/angusleigh/leg_tracker).<br>ROS package to track people legs based on LIDAR scan. Used in early implementation of TIAGo walking assistant project. | 1 | Archived :inbox_tray:
`HRI-pointing_ROS` | ROS package combining object detection and human-pose estimation to display pointed objects on a sketched map | 1 | Archived :inbox_tray:
`human_pose_estimation` | ROS wrapper of [Danil-Osokin/lightweight-human-pose-estimation.pytorch](https://github.com/Daniil-Osokin/lightweight-human-pose-estimation.pytorch), implementing human pose estimation in real-time on CPU. | 1 | Archived :inbox_tray:
`playchess` | ROS package to enable moving chess pieces based on GUI-delivered commands. Used in the tests of ["_Pozzi et al., "A Robotic Assistant for Disabled Chess Players in Competitive Games", 2023_](https://doi.org/10.1007/s12369-023-01069-y). | 1 | Archived :inbox_tray:
`ros_whisper` | ROS wrapper for the `whisper_streaming` package, implementing Automatic Speech Recognition (ASR) | 1 | Archived :inbox_tray: 
`segmentation` | ROS wrapper for libraries implementing object segmentation (_Detectron2_). | 1 | Archived :inbox_tray:
`tiago_gesture_memory_scenario` | Multi-state Human-Robot Interaction scenario. Re-implementation of code used in the tests of [_Pozzi et al., "Robot-Mediated gesture-based memory game for older adult psychophysical stimulation.", 2026_](https://doi.org/10.1109/IROS60139.2025.11247306). | 1 | Archived :inbox_tray:<br>Work in progress :construction:
`tiago_navigation` | Fork of [`pal-robotics/tiago_navigation`](https://github.com/pal-robotics/tiago_navigation).<br>Collects custom maps and instructions to get/set them. | 1 | Archived :inbox_tray:
`tiago_pouring` | ROS package to let TIAGo grasp a water bottle with the Hey-5 anthropomorphic hand. Used for the tests in [_Pozzi et al., "Grasping learning, optimization, and knowledge transfer in the robotics field", 2022_](https://www.nature.com/articles/s41598-022-08276-z) | 1 | Archived :inbox_tray:
`tiago_two_rooms_scenario` | Multi-state Human-Robot Interaction scenario used in the tests of _Pozzi et al., "Robot-Led Activities for Older Adults: A Comparative Study with Human Interaction", 2026_. | 1 | Archived :inbox_tray:
`whisper_streaming` | Forked from [`ufal/whisper_streaming`](https://github.com/ufal/whisper_streaming).<br>Tweak of OpenAI Whisper for Automatic Speech Recognition (ASR) for real-time transcription (instead of standard end-of-utterance behavior). Used in `ros_whisper`. | - | Archived :inbox_tray:<br>Dependency :toolbox:
