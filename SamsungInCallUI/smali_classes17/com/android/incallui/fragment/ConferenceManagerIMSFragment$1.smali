.class Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConferenceManagerIMSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->animateForHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 196
    const-string v0, "hide animation end..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    # getter for: Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->mConferenceParticipantList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->access$000(Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 198
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment$1;->this$0:Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/ConferenceManagerIMSFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    return-void
.end method
