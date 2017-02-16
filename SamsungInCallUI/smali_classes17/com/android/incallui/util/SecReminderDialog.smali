.class public Lcom/android/incallui/util/SecReminderDialog;
.super Landroid/app/Activity;
.source "SecReminderDialog.java"


# static fields
.field public static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mReminderName:Ljava/lang/String;

.field private mReminderNumber:Ljava/lang/String;

.field private mReminderTime:J

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/incallui/util/SecReminderDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/SecReminderDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createCallBackIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p1, "handle"    # Landroid/net/Uri;

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method private createMessageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p1, "handle"    # Landroid/net/Uri;

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/incallui/util/SecReminderDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "reminderName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    .line 60
    const-string v1, "reminderTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderTime:J

    .line 61
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    .line 62
    sget-object v1, Lcom/android/incallui/util/SecReminderDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecReminderDialog : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    .line 66
    :cond_0
    const-string v1, "sem_statusbar"

    invoke-virtual {p0, v1}, Lcom/android/incallui/util/SecReminderDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 67
    iget-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/android/incallui/util/SecReminderDialog;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 71
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->removeRejectCallNotification()V

    .line 73
    invoke-virtual {p0}, Lcom/android/incallui/util/SecReminderDialog;->setReminderForCall()V

    .line 74
    invoke-virtual {p0}, Lcom/android/incallui/util/SecReminderDialog;->finish()V

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 80
    return-void
.end method

.method protected setReminderForCall()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 83
    invoke-static {p0}, Lcom/samsung/android/support/reminder/ReminderAgent;->isAvailable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 113
    :goto_0
    return-void

    .line 87
    :cond_0
    const-string v8, "smsto"

    iget-object v9, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    invoke-static {v8, v9, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 88
    .local v4, "messageUri":Landroid/net/Uri;
    const-string v8, "tel"

    iget-object v9, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderNumber:Ljava/lang/String;

    invoke-static {v8, v9, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    .local v1, "callUri":Landroid/net/Uri;
    new-instance v7, Lcom/samsung/android/support/reminder/ReminderAgent;

    invoke-direct {v7, p0}, Lcom/samsung/android/support/reminder/ReminderAgent;-><init>(Landroid/content/Context;)V

    .line 91
    .local v7, "reminder":Lcom/samsung/android/support/reminder/ReminderAgent;
    new-instance v6, Lcom/samsung/android/support/reminder/RemindContents;

    invoke-direct {v6}, Lcom/samsung/android/support/reminder/RemindContents;-><init>()V

    .line 92
    .local v6, "remindContents":Lcom/samsung/android/support/reminder/RemindContents;
    const v8, 0x7f0902b1

    new-array v9, v12, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/incallui/util/SecReminderDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/samsung/android/support/reminder/RemindContents;->title:Ljava/lang/String;

    .line 93
    iget-wide v8, p0, Lcom/android/incallui/util/SecReminderDialog;->mReminderTime:J

    iput-wide v8, v6, Lcom/samsung/android/support/reminder/RemindContents;->contentTimeStamp:J

    .line 94
    iput v12, v6, Lcom/samsung/android/support/reminder/RemindContents;->cardType:I

    .line 96
    invoke-direct {p0, v4}, Lcom/android/incallui/util/SecReminderDialog;->createMessageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 97
    .local v3, "messageInent":Landroid/content/Intent;
    new-instance v8, Lcom/samsung/android/support/reminder/Action;

    invoke-direct {v8, v12, v3}, Lcom/samsung/android/support/reminder/Action;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/reminder/RemindContents;->addAction(Lcom/samsung/android/support/reminder/Action;)V

    .line 98
    invoke-direct {p0, v1}, Lcom/android/incallui/util/SecReminderDialog;->createCallBackIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, "callInent":Landroid/content/Intent;
    new-instance v8, Lcom/samsung/android/support/reminder/Action;

    const/4 v9, 0x4

    invoke-direct {v8, v9, v0}, Lcom/samsung/android/support/reminder/Action;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/reminder/RemindContents;->addAction(Lcom/samsung/android/support/reminder/Action;)V

    .line 101
    new-instance v5, Lcom/samsung/android/support/reminder/Options;

    invoke-direct {v5}, Lcom/samsung/android/support/reminder/Options;-><init>()V

    .line 102
    .local v5, "options":Lcom/samsung/android/support/reminder/Options;
    const-wide/16 v8, 0x708

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/support/reminder/Options;->addTime(J)V

    .line 103
    const-wide/16 v8, 0xe10

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/support/reminder/Options;->addTime(J)V

    .line 104
    invoke-virtual {v5, v12}, Lcom/samsung/android/support/reminder/Options;->setCustomTimeEnabled(Z)V

    .line 105
    invoke-virtual {v5, v12}, Lcom/samsung/android/support/reminder/Options;->setLocationEnabled(Z)V

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .local v2, "contentIntent":Landroid/content/Intent;
    const-string v8, "vnd.android.cursor.dir/calls"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iput-object v2, v6, Lcom/samsung/android/support/reminder/RemindContents;->contentIntent:Landroid/content/Intent;

    .line 111
    invoke-virtual {v7, v6, v5}, Lcom/samsung/android/support/reminder/ReminderAgent;->register(Lcom/samsung/android/support/reminder/RemindContents;Lcom/samsung/android/support/reminder/Options;)Z

    goto :goto_0
.end method
