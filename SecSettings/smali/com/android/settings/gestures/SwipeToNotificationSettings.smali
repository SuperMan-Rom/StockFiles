.class public Lcom/android/settings/gestures/SwipeToNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SwipeToNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/SwipeToNotificationSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/gestures/SwipeToNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/gestures/SwipeToNotificationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/SwipeToNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/SwipeToNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SwipeToNotifSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ef

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/gestures/SwipeToNotificationSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/gestures/SwipeToNotificationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150118

    return v0
.end method
