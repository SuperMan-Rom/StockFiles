.class Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallTimeBlinkEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CallTimeBlinkEffect;->animateForBlinkCallTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    # --operator for: Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->access$106(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)I

    .line 114
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    # getter for: Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->access$100(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    # invokes: Lcom/android/incallui/accessory/CallTimeBlinkEffect;->animateForBlinkCallTime()V
    invoke-static {v0}, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->access$200(Lcom/android/incallui/accessory/CallTimeBlinkEffect;)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v0, v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    iget-object v0, v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mCallSubStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/accessory/CallTimeBlinkEffect$2;->this$0:Lcom/android/incallui/accessory/CallTimeBlinkEffect;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/incallui/accessory/CallTimeBlinkEffect;->mLastestCallStateLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method
