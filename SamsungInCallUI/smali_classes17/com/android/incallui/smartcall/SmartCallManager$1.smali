.class Lcom/android/incallui/smartcall/SmartCallManager$1;
.super Ljava/lang/Thread;
.source "SmartCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcall/SmartCallManager;->queryCallerInfo(Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcall/SmartCallManager;

.field final synthetic val$callId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcall/SmartCallManager;Ljava/lang/String;Ljava/lang/String;Lcom/android/incallui/smartcall/SmartCallerInfoListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/smartcall/SmartCallManager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->this$0:Lcom/android/incallui/smartcall/SmartCallManager;

    iput-object p2, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$callId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$phoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 53
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 55
    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$callId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v6

    .line 56
    .local v6, "call":Lcom/android/incallui/Call;
    const-string v10, "false"

    .line 57
    .local v10, "isOutging":Ljava/lang/String;
    const-string v9, "false"

    .line 58
    .local v9, "isMissed":Ljava/lang/String;
    const/4 v11, 0x0

    .line 59
    .local v11, "mDisconnectCause":I
    if-eqz v6, :cond_1

    .line 60
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v10, "true"

    .line 61
    :goto_0
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v11

    .line 64
    :cond_0
    const/4 v0, 0x5

    if-ne v11, v0, :cond_3

    const-string v9, "true"

    .line 66
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->this$0:Lcom/android/incallui/smartcall/SmartCallManager;

    # getter for: Lcom/android/incallui/smartcall/SmartCallManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallManager;->access$100(Lcom/android/incallui/smartcall/SmartCallManager;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/smartcall/SmartCallContract;->CALLER_INFO_URI:Landroid/net/Uri;

    # getter for: Lcom/android/incallui/smartcall/SmartCallManager;->DEFAULT_CALLER_INFO_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallManager;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "phoneNumber like ? "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$phoneNumber:Ljava/lang/String;

    aput-object v12, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    const/4 v5, 0x2

    const-string v12, "false"

    aput-object v12, v4, v5

    const/4 v5, 0x3

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 68
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$listener:Lcom/android/incallui/smartcall/SmartCallerInfoListener;

    iget-object v1, p0, Lcom/android/incallui/smartcall/SmartCallManager$1;->val$callId:Ljava/lang/String;

    invoke-interface {v0, v7, v1}, Lcom/android/incallui/smartcall/SmartCallerInfoListener;->onResult(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 72
    .end local v6    # "call":Lcom/android/incallui/Call;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "isMissed":Ljava/lang/String;
    .end local v10    # "isOutging":Ljava/lang/String;
    .end local v11    # "mDisconnectCause":I
    :goto_2
    return-void

    .line 60
    .restart local v6    # "call":Lcom/android/incallui/Call;
    .restart local v9    # "isMissed":Ljava/lang/String;
    .restart local v10    # "isOutging":Ljava/lang/String;
    .restart local v11    # "mDisconnectCause":I
    :cond_2
    const-string v10, "false"

    goto :goto_0

    .line 64
    :cond_3
    const-string v9, "false"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    .end local v6    # "call":Lcom/android/incallui/Call;
    .end local v9    # "isMissed":Ljava/lang/String;
    .end local v10    # "isOutging":Ljava/lang/String;
    .end local v11    # "mDisconnectCause":I
    :catch_0
    move-exception v8

    .line 70
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IllegalArgumentException "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
