.class Lcom/android/incallui/remotecall/RemoteCallPopupService$3;
.super Landroid/os/Handler;
.source "RemoteCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/RemoteCallPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/remotecall/RemoteCallPopupService;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$3;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 385
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$3;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    # invokes: Lcom/android/incallui/remotecall/RemoteCallPopupService;->updateUI()V
    invoke-static {v0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->access$300(Lcom/android/incallui/remotecall/RemoteCallPopupService;)V

    goto :goto_0

    .line 390
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallIntentService;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallPopupService$3;->this$0:Lcom/android/incallui/remotecall/RemoteCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPopupService;->animateForHide()V

    goto :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
