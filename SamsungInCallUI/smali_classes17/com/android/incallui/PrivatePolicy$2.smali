.class Lcom/android/incallui/PrivatePolicy$2;
.super Ljava/lang/Object;
.source "PrivatePolicy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PrivatePolicy;


# direct methods
.method constructor <init>(Lcom/android/incallui/PrivatePolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/PrivatePolicy;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/incallui/PrivatePolicy$2;->this$0:Lcom/android/incallui/PrivatePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 248
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 249
    iget-object v0, p0, Lcom/android/incallui/PrivatePolicy$2;->this$0:Lcom/android/incallui/PrivatePolicy;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/incallui/PrivatePolicy;->access$002(Lcom/android/incallui/PrivatePolicy;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 250
    const/4 v0, 0x1

    return v0
.end method
