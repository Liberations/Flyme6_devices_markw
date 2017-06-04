.class public Lcom/android/server/policy/MiuiPhoneWindowManager;
.super Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.source "MiuiPhoneWindowManager.java"


# static fields
.field private static final ACTION_NOT_PASS_TO_USER:I = 0x0

.field private static final ACTION_PASS_TO_USER:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_DEFAULT:I = -0x1

.field private static final FINGERPRINT_NAV_ACTION_HOME:I = 0x1

.field private static final FINGERPRINT_NAV_ACTION_NONE:I


# instance fields
.field private mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

.field private mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mKeyguardAdded:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->bringUpActionChooseDlg()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/MiuiPhoneWindowManager;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/MiuiPhoneWindowManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private bringUpActionChooseDlg()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x110700c2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110700c3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110700c4

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x110700c5

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavCenterActionChooseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private injectEvent(Landroid/view/KeyEvent;I)V
    .locals 20
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "injectKeyCode"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    move-wide v6, v4

    move/from16 v9, p2

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .local v3, "homeDown":Landroid/view/KeyEvent;
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v19

    move-wide v8, v4

    move-wide v10, v4

    move/from16 v13, p2

    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .local v7, "homeUp":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v8}, Lcom/android/server/policy/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    return-void
.end method

.method private processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isScreenOnInternal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0
.end method

.method private processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_5

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHomeDownAfterDpCenter:Z

    const-string v1, "BaseMiuiPhoneWindowManager"

    const-string v2, "After dpcenter & home down, ignore tap fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_nav_center_action"

    const/4 v3, -0x2

    invoke-static {v1, v2, v7, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .local v0, "action":I
    if-ne v7, v0, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MiuiPhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/MiuiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    if-ne v6, v0, :cond_4

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->injectEvent(Landroid/view/KeyEvent;I)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    goto :goto_0

    .end local v0    # "action":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDpadCenterDown:Z

    goto :goto_0
.end method


# virtual methods
.method public beginLayoutLw(ZIII)V
    .locals 2
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->beginLayoutLw(ZIII)V

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mShowNavBarGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSystemBottom:I

    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenHeight:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    :goto_0
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentTop:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentTop:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentBottom:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentLeft:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mCurRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mVoiceContentRight:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContentRight:I

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSystemRight:I

    sget-object v0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedScreenWidth:I

    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mDockRight:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_0
.end method

.method protected callSuperInterceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishActivityInternal(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    return-void
.end method

.method public finishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->screenTurnedOffInternal(I)V

    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->finishedGoingToSleep(I)V

    return-void
.end method

.method protected forceStopPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "OwningUserId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method protected getKeyguardWindowState()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method protected getWakePolicyFlag()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method hideNavBar()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->setNavBarDimensions(III)V

    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/MiuiPhoneWindowManager;->initInternal(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    return-void
.end method

.method protected intercept(Landroid/view/KeyEvent;IZI)I
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z
    .param p4, "expectedResult"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->intercept(Landroid/view/KeyEvent;IZI)I

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, -0x1

    if-ne p4, v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->interceptKeyBeforeQueueingInternal(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFingerPrintKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFpNavEventNameList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "keyCode":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "keyCode":I
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isInLockTaskMode()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isScreenOnInternal()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isStatusBarKeyguard()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected launchAssistActionInternal(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when starting assist"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method protected launchRecentPanelInternal()V
    .locals 4

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method protected onStatusBarPanelRevealed(Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 3
    .param p1, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected preloadRecentAppsInternal()V
    .locals 4

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v1, 0x7d4

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    const/4 v0, -0x7

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .local v0, "ret":I
    const/16 v1, 0x7d0

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_0
.end method

.method protected processFingerprintNavigationEvent(Landroid/view/KeyEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, "keyCode":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mFrontFingerprintSensor:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processFrontFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->processBackFingerprintDpcenterEvent(Landroid/view/KeyEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, p1, :cond_1

    const-string v1, "WindowManager"

    const-string v2, "Removing keyguard window (Did it crash?)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    .local v0, "isStatusBarWindowRemoving":Z
    :goto_1
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardAdded:Z

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hideScrim()V

    goto :goto_0

    .end local v0    # "isStatusBarWindowRemoving":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected screenOffBecauseOfProxSensor()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected setKeyguardVisibilityState(Z)Z
    .locals 5
    .param p1, "hide"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    .local v1, "wasOccluded":Z
    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v4, v4, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .local v0, "showing":Z
    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v4, v4, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v3, v3, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method setNavBarDimensions(III)V
    .locals 8
    .param p1, "wp"    # I
    .param p2, "hp"    # I
    .param p3, "hl"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPortraitRotation:I

    aget v0, v0, v1

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mLandscapeRotation:I

    aget v0, v0, v1

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPortraitRotation:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mLandscapeRotation:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPortraitRotation:I

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUpsideDownRotation:I

    aput p2, v2, v3

    aput p2, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mLandscapeRotation:I

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSeascapeRotation:I

    aput p3, v2, v3

    aput p3, v0, v1

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPortraitRotation:I

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mUpsideDownRotation:I

    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mLandscapeRotation:I

    iget-object v6, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v7, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mSeascapeRotation:I

    aput p1, v6, v7

    aput p1, v4, v5

    aput p1, v2, v3

    aput p1, v0, v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->updateRotation(Z)V

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    instance-of v0, v0, Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method showNavBar()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarWidth:I

    iget v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarHeight:I

    iget v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mNavBarHeightLand:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/MiuiPhoneWindowManager;->setNavBarDimensions(III)V

    return-void
.end method

.method protected stopLockTaskMode()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->systemReady()V

    new-instance v0, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mMiuiKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->systemReadyInternal()V

    return-void
.end method

.method protected updateNavBar()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/MiuiPhoneWindowManager;->mHideNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->forceShowNavigationBar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->hideNavBar()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiPhoneWindowManager;->showNavBar()V

    goto :goto_0
.end method

.method public windowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_0

    const/16 v0, 0xd

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    goto :goto_0
.end method
