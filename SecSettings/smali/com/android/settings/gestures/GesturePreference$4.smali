.class Lcom/android/settings/gestures/GesturePreference$4;
.super Ljava/lang/Object;
.source "GesturePreference.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/gestures/GesturePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/gestures/GesturePreference;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$playButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/GesturePreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    iput-object p2, p0, Lcom/android/settings/gestures/GesturePreference$4;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/settings/gestures/GesturePreference$4;->val$playButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0, v2}, Lcom/android/settings/gestures/GesturePreference;->-set1(Lcom/android/settings/gestures/GesturePreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get2(Lcom/android/settings/gestures/GesturePreference;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->val$imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get1(Lcom/android/settings/gestures/GesturePreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0, v2}, Lcom/android/settings/gestures/GesturePreference;->-set0(Lcom/android/settings/gestures/GesturePreference;Z)Z

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->this$0:Lcom/android/settings/gestures/GesturePreference;

    invoke-static {v0}, Lcom/android/settings/gestures/GesturePreference;->-get0(Lcom/android/settings/gestures/GesturePreference;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/android/settings/gestures/GesturePreference$4;->val$playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
