.class public final Lcom/piriform/ccleaner/core/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/core/b/l$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/app/ActivityManager;

.field public final b:Landroid/content/pm/PackageManager;

.field public final c:Lcom/piriform/ccleaner/n/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/core/data/i;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/n/b;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/piriform/ccleaner/core/b/l;->a:Landroid/app/ActivityManager;

    .line 39
    iput-object p2, p0, Lcom/piriform/ccleaner/core/b/l;->b:Landroid/content/pm/PackageManager;

    .line 40
    iput-object p3, p0, Lcom/piriform/ccleaner/core/b/l;->c:Lcom/piriform/ccleaner/n/b;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/b/l;->d:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/core/b/l;->e:Ljava/util/List;

    .line 44
    return-void
.end method

.method public static a(Landroid/app/ActivityManager;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1132
    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v1, :cond_1

    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v1, :cond_1

    move v1, v2

    .line 119
    :goto_1
    if-nez v1, :cond_0

    .line 2128
    iget v1, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    move v1, v2

    .line 119
    :goto_2
    if-nez v1, :cond_0

    .line 122
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1132
    goto :goto_1

    :cond_2
    move v1, v3

    .line 2128
    goto :goto_2

    .line 124
    :cond_3
    return-object v4
.end method

.method public static a(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 136
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 137
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 138
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v0, v2, v1

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/piriform/ccleaner/core/b/l;->a:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 149
    return-void
.end method
