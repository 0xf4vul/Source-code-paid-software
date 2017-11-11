.class public final Lcom/google/android/gms/internal/bj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bj$c;,
        Lcom/google/android/gms/internal/bj$d;,
        Lcom/google/android/gms/internal/bj$b;,
        Lcom/google/android/gms/internal/bj$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bj;->a:Ljava/nio/charset/Charset;

    const-string/jumbo v0, "^(1|true|t|yes|y|on)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bj;->b:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(0|false|f|no|n|off|)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/bj;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .prologue
    .line 4000
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 5000
    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 4000
    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 0
    return-object v1

    .line 5000
    :sswitch_0
    const-string/jumbo v0, "NOT_AUTHORIZED_TO_FETCH"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "ANOTHER_FETCH_INFLIGHT"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "FETCH_THROTTLED"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "NOT_AVAILABLE"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "FAILURE_CACHE"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "SUCCESS_FRESH"

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "SUCCESS_CACHE"

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "FETCH_THROTTLED_STALE"

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "SUCCESS_CACHE_STALE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x196c -> :sswitch_8
        -0x196a -> :sswitch_6
        -0x1969 -> :sswitch_5
        0x1964 -> :sswitch_0
        0x1965 -> :sswitch_1
        0x1966 -> :sswitch_2
        0x1967 -> :sswitch_3
        0x1968 -> :sswitch_4
        0x196b -> :sswitch_7
    .end sparse-switch
.end method

.method static a(Lcom/google/android/gms/internal/zzadw;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzadw;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzadw;->d:Lcom/google/android/gms/common/data/DataHolder;

    .line 0
    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/common/data/d;

    sget-object v3, Lcom/google/android/gms/internal/zzadq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    invoke-interface {v0}, Lcom/google/android/gms/common/data/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzadq;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzadq;->a:[B

    .line 0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3000
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->d:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->d:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadw;->d:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_3
    move-object v0, v1

    .line 0
    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzadw;)Ljava/util/HashMap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 0
    .line 6000
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    .line 7000
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadw;->b:Lcom/google/android/gms/common/data/DataHolder;

    .line 6000
    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/data/d;

    sget-object v2, Lcom/google/android/gms/internal/zzaea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/data/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaea;

    .line 8000
    iget-object v1, p0, Lcom/google/android/gms/internal/zzadw;->b:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadw;->b:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadw;->b:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 6000
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 9000
    iget-object v1, v0, Lcom/google/android/gms/internal/zzaea;->a:Landroid/os/Bundle;

    .line 6000
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10000
    iget-object v5, v0, Lcom/google/android/gms/internal/zzaea;->a:Landroid/os/Bundle;

    .line 6000
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 0
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/internal/bg$a;)Lcom/google/android/gms/common/api/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/c;",
            "Lcom/google/android/gms/internal/bg$a;",
            ")",
            "Lcom/google/android/gms/common/api/d",
            "<",
            "Lcom/google/android/gms/internal/bg$b;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bj$1;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/bj$1;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/internal/bg$a;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/internal/f$a;)Lcom/google/android/gms/internal/f$a;

    move-result-object v0

    goto :goto_0
.end method
