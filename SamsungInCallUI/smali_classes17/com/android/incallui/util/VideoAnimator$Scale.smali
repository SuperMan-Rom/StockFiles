.class public Lcom/android/incallui/util/VideoAnimator$Scale;
.super Ljava/lang/Object;
.source "VideoAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/VideoAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scale"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setScale(Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)V
    .locals 8
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "destView"    # Landroid/view/View;
    .param p3, "newHeight"    # I
    .param p4, "show"    # Z

    .prologue
    .line 250
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 253
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 255
    const/high16 v4, 0x3f800000    # 1.0f

    .line 256
    .local v4, "startScaleValue":F
    const v2, 0x3dcccccd    # 0.1f

    .line 257
    .local v2, "endScaleValue":F
    if-eqz p4, :cond_2

    .line 258
    const v4, 0x3dcccccd    # 0.1f

    .line 259
    const/high16 v2, 0x3f800000    # 1.0f

    .line 262
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 263
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotX(F)V

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 268
    .local v3, "oldHeight":I
    sub-int v1, p3, v3

    .line 270
    .local v1, "deltaHeight":I
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 271
    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 272
    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xfa

    .line 273
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/util/VideoAnimator$Scale$2;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/incallui/util/VideoAnimator$Scale$2;-><init>(Landroid/view/View;II)V

    .line 274
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/util/VideoAnimator$Scale$1;

    invoke-direct {v6, p4, p0, p2, p1}, Lcom/android/incallui/util/VideoAnimator$Scale$1;-><init>(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 282
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 309
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
