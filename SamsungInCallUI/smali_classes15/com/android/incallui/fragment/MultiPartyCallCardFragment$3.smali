.class Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiPartyCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForMerge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    .prologue
    .line 1968
    iput-object p1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v4, 0x66

    .line 1971
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "merge animation end..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1973
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1977
    :cond_0
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1983
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    .line 1984
    return-void

    .line 1980
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$3;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method