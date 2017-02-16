.class public Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.super Landroid/content/BroadcastReceiver;
.source "SlookCocktailProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlookCocktail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    return-void
.end method

.method private insertLogForAPI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiName"    # Ljava/lang/String;

    .prologue
    .line 186
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v10

    const-string v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/NoClassDefFoundError;
    const-string v10, "SM_SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "NoClassDefFoundError : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    .end local v3    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v3

    .line 193
    .local v3, "e":Ljava/lang/NoSuchMethodError;
    const-string v10, "SM_SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "NoSuchMethodError : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    .end local v3    # "e":Ljava/lang/NoSuchMethodError;
    :cond_1
    if-eqz p1, :cond_0

    .line 203
    const/4 v7, 0x0

    .line 204
    .local v7, "sdkVersionCode":I
    const/4 v9, -0x1

    .line 206
    .local v9, "version":I
    new-instance v8, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v8}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    .line 207
    .local v8, "temp":Lcom/samsung/android/sdk/look/Slook;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v7

    .line 209
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "feature":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 213
    const-string v11, "com.samsung.android.providers.context"

    const/16 v12, 0x80

    .line 212
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 214
    .local v6, "pInfo":Landroid/content/pm/PackageInfo;
    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 219
    .end local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    const-string v10, "SM_SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "context framework\'s  versionCode: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 222
    const-string v10, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {p1, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_3

    .line 223
    new-instance v10, Ljava/lang/SecurityException;

    invoke-direct {v10}, Ljava/lang/SecurityException;-><init>()V

    throw v10

    .line 215
    :catch_2
    move-exception v4

    .line 216
    .local v4, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "SM_SDK"

    const-string v11, "Could not find ContextProvider"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 226
    .end local v4    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v10, "SM_SDK"

    const-string v11, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v10, "app_id"

    invoke-virtual {v2, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v10, "feature"

    invoke-virtual {v2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v10, "extra"

    invoke-virtual {v2, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v10, "SlookCocktail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v10, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v10, "data"

    invoke-virtual {v1, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    const-string v10, "com.samsung.android.providers.context"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    return-void
.end method

.method public onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 168
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string v7, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 68
    .local v5, "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    const-string v7, "cocktailIds"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    const-string v7, "cocktailIds"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 70
    .local v2, "cocktailIds":[I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    .line 104
    .end local v2    # "cocktailIds":[I
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    const-string v7, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    :try_start_0
    const-string v7, "SlookCocktail"

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->insertLogForAPI(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 79
    .end local v4    # "e":Ljava/lang/SecurityException;
    :cond_3
    const-string v7, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_0

    .line 81
    :cond_4
    const-string v7, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 83
    .restart local v5    # "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    const-string v7, "cocktailId"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    const-string v7, "cocktailId"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "cocktailId":I
    const-string v7, "cocktailVisibility"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    const-string v7, "cocktailVisibility"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 87
    .local v6, "visibility":I
    invoke-virtual {p0, p1, v1, v6}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onVisibilityChanged(Landroid/content/Context;II)V

    goto :goto_0

    .line 90
    .end local v1    # "cocktailId":I
    .end local v5    # "extras":Landroid/os/Bundle;
    .end local v6    # "visibility":I
    :cond_5
    const-string v7, "com.samsung.android.cocktail.action.COCKTAIL_DROPED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 92
    .restart local v5    # "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    const-string v7, "com.samsung.android.intent.extra.DRAG_EVENT"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 94
    const-string v7, "com.samsung.android.intent.extra.DRAG_EVENT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/DragEvent;

    .line 95
    .local v3, "dragEvent":Landroid/view/DragEvent;
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V

    goto :goto_0

    .line 97
    .end local v3    # "dragEvent":Landroid/view/DragEvent;
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_6
    const-string v7, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE_FEEDS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 99
    .restart local v5    # "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_1

    const-string v7, "cocktailId"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    const-string v7, "cocktailId"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 101
    .restart local v1    # "cocktailId":I
    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdateFeeds(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;I)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p3, "cocktailIds"    # [I

    .prologue
    .line 118
    return-void
.end method

.method public onUpdateFeeds(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .param p3, "cocktailId"    # I

    .prologue
    .line 182
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailId"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 153
    return-void
.end method
