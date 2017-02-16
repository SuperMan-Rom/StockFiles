.class public Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Lcom/cmdm/control/bean/CaiXiangShowingObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "caixiang_groupshow"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;->tableName:Ljava/lang/String;

    .line 24
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "missdn"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 25
    const-string v2, "set_date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "guo_qi_date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "greeting"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 26
    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "show_method"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "uid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "thum_url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 27
    const-string v2, "iscurrent"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "isgif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;->columns:[Ljava/lang/String;

    .line 32
    const-string v0, "caixiang_groupshow"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 67
    .local v1, "sinceShow":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 69
    const-string v2, "missdn"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 71
    const-string v2, "gid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 70
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGid(Ljava/lang/String;)V

    .line 73
    const-string v2, "cid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 72
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    .line 75
    const-string v2, "set_date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 74
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setSetDate(Ljava/lang/String;)V

    .line 77
    const-string v2, "guo_qi_date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 76
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGuoQiDate(Ljava/lang/String;)V

    .line 79
    const-string v2, "greeting"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGreeting(Ljava/lang/String;)V

    .line 81
    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 80
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    .line 83
    const-string v2, "start_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 82
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setStart_time(Ljava/lang/String;)V

    .line 85
    const-string v2, "end_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 84
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setEnd_time(Ljava/lang/String;)V

    .line 87
    const-string v2, "show_method"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 86
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    .line 89
    const-string v2, "uid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    .line 91
    const-string v2, "thum_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 90
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    .line 95
    const-string v2, "description"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 94
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/cmdm/control/util/encry/SecretUtils;->decryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDescription(Ljava/lang/String;)V

    .line 97
    const-string v2, "iscurrent"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 96
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIscurrent(Ljava/lang/String;)V

    .line 99
    const-string v2, "isgif"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "sinceShow":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :cond_0
    :goto_0
    return-object v1

    .line 102
    .restart local v1    # "sinceShow":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;->getEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangShowingObject;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 119
    new-instance v1, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-direct {v1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;-><init>()V

    .line 121
    .local v1, "sinceShow":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 123
    const-string v2, "missdn"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 122
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setMissdn(Ljava/lang/String;)V

    .line 125
    const-string v2, "gid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 124
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGid(Ljava/lang/String;)V

    .line 127
    const-string v2, "cid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 126
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setCid(Ljava/lang/String;)V

    .line 129
    const-string v2, "set_date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 128
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setSetDate(Ljava/lang/String;)V

    .line 131
    const-string v2, "guo_qi_date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 130
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGuoQiDate(Ljava/lang/String;)V

    .line 133
    const-string v2, "greeting"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 132
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setGreeting(Ljava/lang/String;)V

    .line 135
    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 134
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUrl(Ljava/lang/String;)V

    .line 137
    const-string v2, "start_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 136
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setStart_time(Ljava/lang/String;)V

    .line 139
    const-string v2, "end_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 138
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setEnd_time(Ljava/lang/String;)V

    .line 141
    const-string v2, "show_method"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 140
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setShow_method(Ljava/lang/String;)V

    .line 143
    const-string v2, "uid"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 142
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setUid(Ljava/lang/String;)V

    .line 145
    const-string v2, "thum_url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 144
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setThum_url(Ljava/lang/String;)V

    .line 147
    const-string v2, "description"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 146
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setDescription(Ljava/lang/String;)V

    .line 149
    const-string v2, "iscurrent"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 148
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIscurrent(Ljava/lang/String;)V

    .line 151
    const-string v2, "isgif"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 150
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->setIsgif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "sinceShow":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :cond_0
    :goto_0
    return-object v1

    .line 154
    .restart local v1    # "sinceShow":Lcom/cmdm/control/bean/CaiXiangShowingObject;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;->getSafeEntity(Landroid/database/Cursor;)Lcom/cmdm/control/bean/CaiXiangShowingObject;

    move-result-object v0

    return-object v0
.end method

.method protected insert(Lcom/cmdm/control/bean/CaiXiangShowingObject;)Z
    .locals 6
    .param p1, "t"    # Lcom/cmdm/control/bean/CaiXiangShowingObject;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "missdn"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getMissdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "gid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getGid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "cid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "set_date"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getSetDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "guo_qi_date"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getGuoQiDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "greeting"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getGreeting()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "start_time"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getStart_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "end_time"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getEnd_time()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "show_method"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getShow_method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "thum_url"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getThum_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cmdm/control/util/encry/SecretUtils;->encryptMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "iscurrent"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getIscurrent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "isgif"

    invoke-virtual {p1}, Lcom/cmdm/control/bean/CaiXiangShowingObject;->getIsgif()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v4, "caixiang_groupshow"

    invoke-virtual {v1, v0, v4}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 56
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 57
    const/4 v1, 0x1

    .line 60
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "rowId":J
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/cmdm/control/bean/CaiXiangShowingObject;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/CaiXiangGroupShowingStrategy;->insert(Lcom/cmdm/control/bean/CaiXiangShowingObject;)Z

    move-result v0

    return v0
.end method
