.class Lcom/android/incallui/service/HeadUpNotificationService$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HeadUpNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/HeadUpNotificationService;->animateForShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/HeadUpNotificationService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/HeadUpNotificationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;
    invoke-static {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->access$600(Lcom/android/incallui/service/HeadUpNotificationService;)Lcom/android/incallui/service/HeadUpNotificationView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;
    invoke-static {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->access$600(Lcom/android/incallui/service/HeadUpNotificationService;)Lcom/android/incallui/service/HeadUpNotificationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/HeadUpNotificationView;->setTranslationY(F)V

    .line 403
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    .line 404
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    .line 405
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->onShowPopup()V

    .line 407
    :cond_0
    return-void
.end method
