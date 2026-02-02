using System;
using System.Runtime.InteropServices;

namespace MotionAPI_Test
{
    /// <summary>
    /// P/Invoke wrapper - motion_control.dll API (Pointer-based to avoid structure sync issues)
    /// </summary>
    public static class MotionControlAPI
    {
        private const string DllName = "motion_control.dll";

        #region Enums

        public enum AxisType : ushort
        {
            Virtual = 0,
            Real = 1,
            Gantry = 2
        }

        public enum AxisState : ushort
        {
            Disabled = 0,
            Standby = 1,
            Moving = 2,
            Stopping = 3,
            Error = 4
        }

        public enum AxisMode : ushort
        {
            Position = 0,
            Velocity = 1,
            Torque = 2
        }

        public enum ProfileState : ushort
        {
            Idle = 0,
            Accel = 1,
            Const = 2,
            Decel = 3,
            Done = 4
        }

        #endregion

        #region API Functions (Pointer-based)

        // ========== Create/Destroy API ==========
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr MotionAxis_create(ushort axisID, AxisType axisType);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_destroy(IntPtr axis);

        // ========== Motion Axis API (Pointer version) ==========
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_addMotor(IntPtr axis, ushort motorID, float gearRatio);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_setMotionParams(IntPtr axis, float maxVel, float maxAccel, float maxDecel);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_setJerkTime(IntPtr axis, float jerkTime);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_setPIDGains(IntPtr axis, ushort motorIndex, float Kp, float Ki, float Kd);
        
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float TrapProfile_getAcceleration(IntPtr profile);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float TrapProfile_getJerk(IntPtr profile);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_setFollowingErrorLimit(IntPtr axis, ushort motorIndex, float posError, float velError);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_setProfileUpdateTs(IntPtr axis, float ts);

        // Enable/Disable
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_enable(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_disable(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern int MotionAxis_getState(IntPtr axis);

        // Motion Commands
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_moveAbsolute(IntPtr axis, float targetPos);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_moveRelative(IntPtr axis, float distance);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_stop(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_emergencyStop(IntPtr axis);

        // Control Updates
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_updateControl(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_updateProfile(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern void MotionAxis_updateFeedback(IntPtr axis, ushort motorIndex, float actPos, float actVel);

        // ========== Getter Functions (Status) ==========
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern ushort MotionAxis_getMotorCount(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern AxisType MotionAxis_getAxisType(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern AxisState MotionAxis_getAxisState(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getCmdPosition(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getActPosition(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getCmdVelocity(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getActVelocity(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getTargetPosition(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getTargetVelocity(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern ushort MotionAxis_getBufferCount(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern ProfileState MotionAxis_getProfileState(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.I1)]
        public static extern bool MotionAxis_isProfileActive(IntPtr axis);

        // Motor Status
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotorDrive_getActPosition(IntPtr axis, ushort motorIndex);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotorDrive_getActVelocity(IntPtr axis, ushort motorIndex);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotorDrive_getActAcceleration(IntPtr axis, ushort motorIndex);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotorDrive_getActJerk(IntPtr axis, ushort motorIndex);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotorDrive_getPIDKp(IntPtr axis, ushort motorIndex);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.I1)]
        public static extern bool MotorDrive_isPIDEnabled(IntPtr axis, ushort motorIndex);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        [return: MarshalAs(UnmanagedType.I1)]
        public static extern bool MotorDrive_isEnabled(IntPtr axis, ushort motorIndex);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern uint MotorDrive_getErrorCounter(IntPtr axis, ushort motorIndex);

        // Trajectory Diagnostics
        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getTotalTime(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getElapsedTime(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern float MotionAxis_getProfileUpdateTs(IntPtr axis);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        public static extern ushort MotionAxis_getBufferFreeSpace(IntPtr axis);

        #endregion
    }
}
