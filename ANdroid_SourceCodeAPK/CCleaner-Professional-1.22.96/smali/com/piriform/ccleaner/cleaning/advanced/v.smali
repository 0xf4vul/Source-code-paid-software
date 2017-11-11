.class public final Lcom/piriform/ccleaner/cleaning/advanced/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/ah;


# static fields
.field private static final ADVANCED_CLEANING:Ljava/lang/String; = "advcleaning"

.field private static final API_LEVEL:Ljava/lang/String; = "api_level"

.field private static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final DATE:Ljava/lang/String; = "date"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm"

.field private static final FAILURES:Ljava/lang/String; = "advcleaning/failures"

.field private static final GENERIC_TYPE_STEP_VALUE_LIST_INDICATOR:Lcom/google/firebase/database/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/g",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOCALE:Ljava/lang/String; = "locale"

.field private static final MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field private static final MODEL:Ljava/lang/String; = "model"

.field private static final NODE_IDS:Ljava/lang/String; = "node-ids"

.field private static final STEPS_DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final databaseInstance:Lcom/google/firebase/database/f;

.field private final deviceFeatures:Lcom/piriform/ccleaner/s/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.android.settings:string/internal_storage"

    .line 36
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.android.settings:string/memory_media_cache_usage"

    .line 37
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "com.android.settings:string/storage_detail_cached"

    .line 38
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "com.android.settings:string/proxy_clear_text"

    .line 39
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "android:id/list"

    .line 40
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->scroll(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "android:string/storage_internal"

    .line 41
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "android:string/dlg_ok"

    .line 42
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->clickFinal(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "android:string/delete"

    .line 43
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->clickFinal(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "android:id/button1"

    .line 44
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->clickFinal(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "com.android.settings:id/button1"

    .line 45
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->clickFinal(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "com.android.settings:string/storage_internal_title"

    .line 46
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "com.android.settings:id/icon_frame"

    .line 47
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "id/icon_frame"

    .line 48
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "icon_frame"

    .line 49
    invoke-static {v2}, Lcom/piriform/ccleaner/cleaning/advanced/StepValue;->click(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/advanced/StepValue;

    move-result-object v2

    aput-object v2, v0, v1

    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/v;->STEPS_DEFAULT:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/v$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/advanced/v$1;-><init>()V

    sput-object v0, Lcom/piriform/ccleaner/cleaning/advanced/v;->GENERIC_TYPE_STEP_VALUE_LIST_INDICATOR:Lcom/google/firebase/database/g;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/f;Lcom/piriform/ccleaner/s/h;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/v;->databaseInstance:Lcom/google/firebase/database/f;

    .line 61
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/v;->deviceFeatures:Lcom/piriform/ccleaner/s/h;

    .line 62
    return-void
.end method

.method private appendApiLevel(Lcom/google/firebase/database/d;)V
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "api_level"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/v;->deviceFeatures:Lcom/piriform/ccleaner/s/h;

    .line 116
    invoke-interface {v1}, Lcom/piriform/ccleaner/s/h;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    .line 117
    return-void
.end method

.method private appendAppVersionTo(Lcom/google/firebase/database/d;)V
    .locals 2

    .prologue
    .line 141
    const-string/jumbo v0, "appVersion"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/v;->deviceFeatures:Lcom/piriform/ccleaner/s/h;

    .line 142
    invoke-interface {v1}, Lcom/piriform/ccleaner/s/h;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    .line 143
    return-void
.end method

.method private appendLocaleTo(Lcom/google/firebase/database/d;)V
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v0, "locale"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    .line 138
    return-void
.end method

.method private appendManufacturer(Lcom/google/firebase/database/d;)V
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "manufacturer"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/v;->deviceFeatures:Lcom/piriform/ccleaner/s/h;

    .line 121
    invoke-interface {v1}, Lcom/piriform/ccleaner/s/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    .line 122
    return-void
.end method

.method private appendModel(Lcom/google/firebase/database/d;)V
    .locals 2

    .prologue
    .line 125
    const-string/jumbo v0, "model"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/v;->deviceFeatures:Lcom/piriform/ccleaner/s/h;

    .line 126
    invoke-interface {v1}, Lcom/piriform/ccleaner/s/h;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    .line 127
    return-void
.end method

.method private appendTimestampTo(Lcom/google/firebase/database/d;)V
    .locals 6

    .prologue
    .line 130
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 131
    const-string/jumbo v1, "date"

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    .line 133
    return-void
.end method

.method private static avoidCachingIn(Lcom/google/firebase/database/d;)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/firebase/database/d;->d()V

    .line 87
    return-void
.end method

.method private failuresByUserId(Ljava/lang/String;)Lcom/google/firebase/database/d;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/v;->databaseInstance:Lcom/google/firebase/database/f;

    invoke-virtual {v0}, Lcom/google/firebase/database/f;->b()Lcom/google/firebase/database/d;

    move-result-object v0

    const-string/jumbo v1, "advcleaning/failures"

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    return-object v0
.end method

.method private nodeIds()Lcom/google/firebase/database/d;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/v;->databaseInstance:Lcom/google/firebase/database/f;

    invoke-virtual {v0}, Lcom/google/firebase/database/f;->b()Lcom/google/firebase/database/d;

    move-result-object v0

    const-string/jumbo v1, "advcleaning"

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    const-string/jumbo v1, "node-ids"

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/d;->a(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/v;->avoidCachingIn(Lcom/google/firebase/database/d;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public final defaultStepValues()Lf/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/piriform/ccleaner/cleaning/advanced/v;->STEPS_DEFAULT:Ljava/util/List;

    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final deleteLogsByUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/v;->failuresByUserId(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/firebase/database/d;->b()Lcom/google/android/gms/b/e;

    .line 149
    return-void
.end method

.method public final insertLogsByUserId(Ljava/util/List;Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/advanced/u;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/y;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/piriform/ccleaner/cleaning/advanced/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p2}, Lcom/piriform/ccleaner/cleaning/advanced/v;->failuresByUserId(Ljava/lang/String;)Lcom/google/firebase/database/d;

    move-result-object v1

    .line 92
    new-instance v2, Lcom/piriform/ccleaner/cleaning/advanced/v$2;

    invoke-direct {v2, p0, p3}, Lcom/piriform/ccleaner/cleaning/advanced/v$2;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/v;Lcom/piriform/ccleaner/cleaning/advanced/u;)V

    .line 99
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/v;->appendLocaleTo(Lcom/google/firebase/database/d;)V

    .line 100
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/v;->appendTimestampTo(Lcom/google/firebase/database/d;)V

    .line 101
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/v;->appendAppVersionTo(Lcom/google/firebase/database/d;)V

    .line 102
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/v;->appendManufacturer(Lcom/google/firebase/database/d;)V

    .line 103
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/v;->appendModel(Lcom/google/firebase/database/d;)V

    .line 104
    invoke-direct {p0, v1}, Lcom/piriform/ccleaner/cleaning/advanced/v;->appendApiLevel(Lcom/google/firebase/database/d;)V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/cleaning/advanced/y;

    .line 107
    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/advanced/g;->printViewTree(Lcom/piriform/ccleaner/cleaning/advanced/y;)V

    .line 108
    invoke-virtual {v1}, Lcom/google/firebase/database/d;->a()Lcom/google/firebase/database/d;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v0}, Lcom/google/firebase/database/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v2}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/e;

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public final remoteStepValues()Lf/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/t;

    sget-object v1, Lcom/piriform/ccleaner/cleaning/advanced/v;->GENERIC_TYPE_STEP_VALUE_LIST_INDICATOR:Lcom/google/firebase/database/g;

    .line 67
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/v;->nodeIds()Lcom/google/firebase/database/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/piriform/ccleaner/cleaning/advanced/t;-><init>(Lcom/google/firebase/database/g;Lcom/google/firebase/database/d;)V

    sget v1, Lf/a$a;->e:I

    .line 66
    invoke-static {v0, v1}, Lf/d;->a(Lf/c/b;I)Lf/d;

    move-result-object v0

    return-object v0
.end method
