.class Lcom/android/incallui/InCallActivity$29;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->animateForShrinkBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;

.field final synthetic val$isIncoming:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 4052
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$29;->this$0:Lcom/android/incallui/InCallActivity;

    iput-boolean p2, p0, Lcom/android/incallui/InCallActivity$29;->val$isIncoming:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScaleAnimationEnd()V
    .locals 3

    .prologue
    .line 4055
    const-string v0, "InCallActivity"

    const-string v1, "animateForShrinkBackground: onScaleAnimationEnd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4056
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$29;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1700(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4057
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$29;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mGradientAnimationView:Lcom/android/incallui/widget/GradientAnimationView;
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1700(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/widget/GradientAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/widget/GradientAnimationView;->resetGradientFactor()V

    .line 4058
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity$29;->val$isIncoming:Z

    if-nez v0, :cond_1

    .line 4059
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange()V

    .line 4060
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateForegroundCallDetails()V

    .line 4062
    :cond_1
    return-void
.end method
