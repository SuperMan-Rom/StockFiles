.class public Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;
.super Ljava/lang/Object;
.source "VideoCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoDetails"
.end annotation


# instance fields
.field public capturedHideMeImage:Ljava/lang/String;

.field public isEnoughSpaceForAnswer:Z

.field public isExchangedViews:Z

.field public isLivePreview:Z

.field public isNeedResizeAnimation:Z

.field public isScreenResized:Z

.field public isSwapProgressing:Z

.field public isSwitchCameraClicked:Z

.field final synthetic this$0:Lcom/android/incallui/service/vt/VideoCallManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/vt/VideoCallManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/incallui/service/vt/VideoCallManager;

    .prologue
    const/4 v1, 0x0

    .line 562
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isLivePreview:Z

    .line 554
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwitchCameraClicked:Z

    .line 555
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isScreenResized:Z

    .line 556
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isNeedResizeAnimation:Z

    .line 557
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isExchangedViews:Z

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->capturedHideMeImage:Ljava/lang/String;

    .line 559
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isEnoughSpaceForAnswer:Z

    .line 560
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwapProgressing:Z

    .line 563
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isLivePreview:Z

    .line 567
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwitchCameraClicked:Z

    .line 568
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isScreenResized:Z

    .line 569
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isNeedResizeAnimation:Z

    .line 570
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isExchangedViews:Z

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->capturedHideMeImage:Ljava/lang/String;

    .line 572
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isEnoughSpaceForAnswer:Z

    .line 573
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwapProgressing:Z

    .line 574
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 577
    const-string v0, " VideoDetails {LivePreview=%s, CameraSwitching=%s, ExchangedView=%s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isLivePreview:Z

    .line 578
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwitchCameraClicked:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isExchangedViews:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 577
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
