.class final Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs$2;
.super Landroid/database/ContentObserver;
.source "LastCallLogQueryArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->registerContentObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 82
    const-string v0, "LastCallLogQueryArgs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange - LastCallLogQueryArgs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    # getter for: Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    # getter for: Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    :cond_0
    # getter for: Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 87
    return-void
.end method
