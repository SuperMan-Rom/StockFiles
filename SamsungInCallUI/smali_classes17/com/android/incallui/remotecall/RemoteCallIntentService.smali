.class public Lcom/android/incallui/remotecall/RemoteCallIntentService;
.super Landroid/app/IntentService;
.source "RemoteCallIntentService.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field public static PULL_REMOTE:Ljava/lang/String;

.field private static sIsTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "RemoteCallIntentService"

    sput-object v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->LOG_TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    .line 13
    const-string v0, "pull_remote"

    sput-object v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->PULL_REMOTE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "RemoteCallIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static isTest()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    return v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 21
    sget-object v3, Lcom/android/incallui/remotecall/RemoteCallIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onHandleIntent"

    invoke-static {v3, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v3, "isTest"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    .line 24
    sget-object v3, Lcom/android/incallui/remotecall/RemoteCallIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTest = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 26
    .local v2, "state":I
    const-string v3, "num"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "number":Ljava/lang/String;
    sget-object v3, Lcom/android/incallui/remotecall/RemoteCallIntentService;->PULL_REMOTE:Ljava/lang/String;

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 29
    .local v1, "pullRemote":Z
    sget-boolean v3, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    if-eqz v3, :cond_0

    .line 30
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->init()V

    .line 31
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->setSelfTest(Ljava/lang/String;I)V

    .line 39
    :goto_0
    return-void

    .line 32
    :cond_0
    if-eqz v1, :cond_1

    .line 33
    sget-object v3, Lcom/android/incallui/remotecall/RemoteCallIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "receive pull_remote"

    invoke-static {v3, v4}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->requestPulling()Z

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->init()V

    goto :goto_0
.end method
