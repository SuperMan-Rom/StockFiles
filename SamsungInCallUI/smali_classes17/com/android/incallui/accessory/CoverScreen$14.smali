.class Lcom/android/incallui/accessory/CoverScreen$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen;->animateHideForMaskPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/accessory/CoverScreen;

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$14;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$14;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$1700(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$14;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mMaskPanelForSlidingDrawer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$1700(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$14;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$1800(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2171
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$14;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mIncomingCallImageWidget:Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$1800(Lcom/android/incallui/accessory/CoverScreen;)Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/CoverScreen$14;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mRejectCallWithMsgHandle:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/accessory/CoverScreen;->access$1900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    .line 2173
    :cond_1
    return-void
.end method
