.class final Lcom/android/incallui/util/ContactAgentUtils$1;
.super Landroid/os/AsyncTask;
.source "ContactAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/ContactAgentUtils;->startContactAgentAsync(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 148
    const-string v4, "ContactAgentUtils"

    const-string v5, "startContactAgentAsync: start"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/util/EasySignUpManager;->isJoined(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    const/4 v4, 0x0

    aget-object v3, p1, v4

    check-cast v3, Ljava/lang/String;

    .line 153
    .local v3, "phoneNumber":Ljava/lang/String;
    aget-object v4, p1, v7

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 154
    .local v2, "isIncoming":Z
    const/4 v4, 0x2

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 155
    .local v1, "isContactExists":Z
    const-string v4, "ContactAgentUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startContactAgentAsync: isIncoming - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isContactExists - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    if-eqz v1, :cond_1

    .line 157
    invoke-static {v0, v3}, Lcom/android/incallui/util/ContactAgentUtils;->isBizringByMsisdn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-static {v0, v3, v2, v1}, Lcom/android/incallui/util/ContactAgentUtils;->startContactAgent(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 166
    .end local v1    # "isContactExists":Z
    .end local v2    # "isIncoming":Z
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v4, "ContactAgentUtils"

    const-string v5, "startContactAgentAsync: end"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    const/4 v4, 0x0

    return-object v4

    .line 161
    .restart local v1    # "isContactExists":Z
    .restart local v2    # "isIncoming":Z
    .restart local v3    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-static {v0, v3, v2, v1}, Lcom/android/incallui/util/ContactAgentUtils;->startContactAgent(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 164
    .end local v1    # "isContactExists":Z
    .end local v2    # "isIncoming":Z
    .end local v3    # "phoneNumber":Ljava/lang/String;
    :cond_2
    const-string v4, "ContactAgentUtils"

    const-string v5, "startContactAgentAsync: do not support"

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
