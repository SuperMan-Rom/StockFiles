.class Lcom/android/incallui/fragment/view/CallCardJanskyView$1;
.super Ljava/lang/Object;
.source "CallCardJanskyView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardJanskyView;->updateMultiLineColor(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardJanskyView;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardJanskyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/view/CallCardJanskyView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->access$000(Lcom/android/incallui/fragment/view/CallCardJanskyView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardJanskyView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardJanskyView;

    # getter for: Lcom/android/incallui/fragment/view/CallCardJanskyView;->mMultiLineName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/incallui/fragment/view/CallCardJanskyView;->access$000(Lcom/android/incallui/fragment/view/CallCardJanskyView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    :cond_0
    return-void
.end method
