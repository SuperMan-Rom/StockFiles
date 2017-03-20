.class public Lcom/android/incallui/bike/BikeCallVibrator;
.super Ljava/lang/Object;
.source "BikeCallVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BikeCallVibrator"

.field private static sInstance:Lcom/android/incallui/bike/BikeCallVibrator;


# instance fields
.field private mBikeCallVibratorUri:Landroid/net/Uri;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;

    .line 45
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeCallVibrator;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/bike/BikeCallVibrator;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/bike/BikeCallVibrator;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/bike/BikeCallVibrator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Lcom/android/incallui/bike/BikeCallVibrator;->sInstance:Lcom/android/incallui/bike/BikeCallVibrator;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/incallui/bike/BikeCallVibrator;

    invoke-direct {v0, p0}, Lcom/android/incallui/bike/BikeCallVibrator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/bike/BikeCallVibrator;->sInstance:Lcom/android/incallui/bike/BikeCallVibrator;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/incallui/bike/BikeCallVibrator;->sInstance:Lcom/android/incallui/bike/BikeCallVibrator;

    return-object v0
.end method

.method private getVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 107
    const-string v2, "vibrator"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 108
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "BikeCallVibrator"

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 170
    const-string v0, "BikeCallVibrator"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    return-void
.end method


# virtual methods
.method public isVibrating()Z
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBikeCallVibratorUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBikeCallVibratorUri uri :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    .line 58
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeCallVibrator;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->stopThread()V

    .line 60
    iput-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    .line 61
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 62
    new-instance v0, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    invoke-direct {v0, p0, v2}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;-><init>(Lcom/android/incallui/bike/BikeCallVibrator;Lcom/android/incallui/bike/BikeCallVibrator$1;)V

    iput-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    .line 63
    const-string v0, "- re-starting vibrator..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;Z)V

    .line 64
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->start()V

    .line 67
    :cond_0
    return-void
.end method

.method public startVibration()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public stopVibration()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/bike/BikeCallVibrator;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "- stopVibration: cleaning up vibrator thread..."

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;Z)V

    .line 82
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;->stopThread()V

    .line 83
    iput-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibratorThread:Lcom/android/incallui/bike/BikeCallVibrator$VibratorThread;

    .line 84
    iput-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "- stopVibration mBikeCallVibratorUri : "

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;Z)V

    .line 88
    iput-object v2, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mBikeCallVibratorUri:Landroid/net/Uri;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/bike/BikeCallVibrator;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 91
    const-string v0, "- stopVibration isVibrating is null "

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/bike/BikeCallVibrator;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method