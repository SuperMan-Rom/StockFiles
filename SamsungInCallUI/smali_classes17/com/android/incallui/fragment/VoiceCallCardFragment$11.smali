.class Lcom/android/incallui/fragment/VoiceCallCardFragment$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateInfoCardForAnswer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 2099
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setAlpha(F)V

    .line 2103
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$11;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoCardView:Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setVisibility(I)V

    .line 2104
    return-void
.end method
