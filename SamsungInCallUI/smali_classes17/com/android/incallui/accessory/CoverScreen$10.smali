.class Lcom/android/incallui/accessory/CoverScreen$10;
.super Ljava/lang/Object;
.source "CoverScreen.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen;->setSmartCallPhotoFilter(IZ)V
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
    .line 902
    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$10;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$10;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$1400(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$10;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mSmartCallPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$1400(Lcom/android/incallui/accessory/CoverScreen;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 908
    :cond_0
    return-void
.end method
