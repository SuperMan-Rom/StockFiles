.class synthetic Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$1;
.super Ljava/lang/Object;
.source "ConferenceManagerFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$incallui$fragment$manager$ConferenceManagerFragmentManager$FragmentMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$ConferenceManagerFragmentManager$FragmentMode:[I

    :try_start_0
    sget-object v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$ConferenceManagerFragmentManager$FragmentMode:[I

    sget-object v1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$ConferenceManagerFragmentManager$FragmentMode:[I

    sget-object v1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->DEFAULT_VIDEO:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$ConferenceManagerFragmentManager$FragmentMode:[I

    sget-object v1, Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;->IMS_CONFERENCE:Lcom/android/incallui/fragment/manager/ConferenceManagerFragmentManager$FragmentMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
