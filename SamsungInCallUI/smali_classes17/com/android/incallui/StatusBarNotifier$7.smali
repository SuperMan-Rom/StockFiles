.class Lcom/android/incallui/StatusBarNotifier$7;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/StatusBarNotifier;->registerImsCallStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$7;->this$0:Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 342
    const-string v1, "StatusBarNotifier"

    const-string v2, "onServiceConnected: Connected to Volte service."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {p2}, Lcom/sec/ims/volte2/IVolteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    # setter for: Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;
    invoke-static {v1}, Lcom/android/incallui/StatusBarNotifier;->access$602(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    .line 345
    :try_start_0
    # getter for: Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;
    invoke-static {}, Lcom/android/incallui/StatusBarNotifier;->access$600()Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    # getter for: Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;
    invoke-static {}, Lcom/android/incallui/StatusBarNotifier;->access$600()Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier$7;->this$0:Lcom/android/incallui/StatusBarNotifier;

    # getter for: Lcom/android/incallui/StatusBarNotifier;->mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;
    invoke-static {v2}, Lcom/android/incallui/StatusBarNotifier;->access$700(Lcom/android/incallui/StatusBarNotifier;)Lcom/sec/ims/volte2/ImsCallEventListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 336
    const-string v0, "StatusBarNotifier"

    const-string v1, "onServiceDisconnected: Disconnected."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x0

    # setter for: Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;
    invoke-static {v0}, Lcom/android/incallui/StatusBarNotifier;->access$602(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    .line 338
    return-void
.end method
