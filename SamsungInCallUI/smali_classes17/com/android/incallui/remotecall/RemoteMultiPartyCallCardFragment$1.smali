.class Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;
.super Ljava/lang/Object;
.source "RemoteMultiPartyCallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 175
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment$1;->this$0:Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;

    # invokes: Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->updateContainerLayout()V
    invoke-static {v1}, Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;->access$000(Lcom/android/incallui/remotecall/RemoteMultiPartyCallCardFragment;)V

    goto :goto_0
.end method
