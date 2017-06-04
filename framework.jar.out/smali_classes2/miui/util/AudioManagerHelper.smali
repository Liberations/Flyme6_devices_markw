.class public Lmiui/util/AudioManagerHelper;
.super Ljava/lang/Object;
.source "AudioManagerHelper.java"


# static fields
.field public static final FLAG_ONLY_SET_VOLUME:I = 0x100000

.field public static final FLAG_SHOW_UI_WARNINGS:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyRestrictionForVibrate(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .local v0, "appOps":Landroid/app/AppOpsManager;
    const/4 v4, 0x6

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v5, v4, v1, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/4 v4, 0x5

    if-eqz p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v5, v4, v1, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    const/4 v1, 0x4

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public static getHiFiVolume(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    :try_start_0
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    const-string v3, "hifi_volume"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "volumeStr":Ljava/lang/String;
    const-string v3, "hifi_volume="

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "volumeStr":Ljava/lang/String;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getValidatedRingerMode(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->getValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getValidatedRingerModeForUser(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    invoke-static {p0, p1, p2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v0

    .local v0, "vibrate":Z
    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    move p1, v1

    .end local p1    # "mode":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "mode":I
    :cond_1
    if-ne v1, p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static isHiFiMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .local v1, "isHeadsetOn":Z
    const-string v3, "hifi_mode"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .local v2, "isHifiModeEnabled":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSilentEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVibrateEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;I)Z

    move-result v1

    return v1
.end method

.method public static isVibrateEnabled(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static isVibrateEnabledForUser(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    invoke-static {p0, v1, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v1

    return v1
.end method

.method public static isVibrateEnabledForUser(Landroid/content/Context;II)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .local v1, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    .local v0, "hasVibrator":Z
    const/4 v4, 0x2

    if-eq v4, p1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v2, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_in_normal"

    sget-boolean v4, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    if-eqz v4, :cond_4

    move v4, v2

    :goto_1
    invoke-static {v5, v6, v4, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eq v4, v2, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1
.end method

.method public static setHiFiVolume(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hifiVolume"    # I

    .prologue
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hifi_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public static setVibrateSetting(Landroid/content/Context;ZZ)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "forSilient"    # Z

    .prologue
    const/4 v0, -0x3

    invoke-static {p0, p1, p2, v0}, Lmiui/util/AudioManagerHelper;->setVibrateSettingForUser(Landroid/content/Context;ZZI)V

    return-void
.end method

.method public static setVibrateSettingForUser(Landroid/content/Context;ZZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z
    .param p2, "forSilient"    # Z
    .param p3, "userHandle"    # I

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v1, "vibrate_in_silent"

    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v3, v2, v1, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {p0, p3}, Lmiui/util/AudioManagerHelper;->validateRingerMode(Landroid/content/Context;I)I

    move-result v0

    .local v0, "newMode":I
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-static {p0, p1}, Lmiui/util/AudioManagerHelper;->applyRestrictionForVibrate(Landroid/content/Context;Z)V

    :cond_0
    return-void

    .end local v0    # "newMode":I
    :cond_1
    const-string v1, "vibrate_in_normal"

    move-object v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static toggleSilent(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    const/4 v0, -0x3

    invoke-static {p0, p1, v0}, Lmiui/util/AudioManagerHelper;->toggleSilentForUser(Landroid/content/Context;II)V

    return-void
.end method

.method public static toggleSilentForUser(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v4, v2, :cond_2

    invoke-static {p0, v3, p2}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .local v1, "newMode":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, v4, v3, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_0
    return-void

    .end local v1    # "newMode":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "newMode":I
    goto :goto_0

    .end local v1    # "newMode":I
    :cond_2
    const/4 v1, 0x2

    .restart local v1    # "newMode":I
    goto :goto_0
.end method

.method public static toggleVibrateSetting(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x3

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->toggleVibrateSettingForUser(Landroid/content/Context;I)V

    return-void
.end method

.method public static toggleVibrateSettingForUser(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    invoke-static {p0, p1}, Lmiui/util/AudioManagerHelper;->isVibrateEnabledForUser(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/util/AudioManagerHelper;->setVibrateSettingForUser(Landroid/content/Context;ZZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static validateRingerMode(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userHandle"    # I

    .prologue
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .local v1, "mode":I
    invoke-static {p0, v1, p1}, Lmiui/util/AudioManagerHelper;->getValidatedRingerModeForUser(Landroid/content/Context;II)I

    move-result v2

    .local v2, "newMode":I
    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_0
    return v2
.end method
