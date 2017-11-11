.class final Lcom/piriform/ccleaner/o/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/o/h;->c()Lf/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/piriform/ccleaner/l/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/o/h;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/o/h;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/piriform/ccleaner/o/h$1;->a:Lcom/piriform/ccleaner/o/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/piriform/ccleaner/l/c;
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1039
    :try_start_0
    const-string/jumbo v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1040
    const-string/jumbo v1, "label"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1041
    const-string/jumbo v1, "local_time"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1042
    const-string/jumbo v1, "days"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1043
    const-string/jumbo v1, "analyses"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1044
    const-string/jumbo v1, "enabled"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 1045
    :goto_0
    const-string/jumbo v3, "results_notification_enabled"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    .line 1047
    :goto_1
    invoke-static {v6}, Lcom/piriform/ccleaner/l/a;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/l/a;

    move-result-object v6

    .line 1048
    new-instance v0, Lcom/piriform/ccleaner/l/b;

    invoke-direct {v0, v4, v6, v1}, Lcom/piriform/ccleaner/l/b;-><init>(Ljava/lang/Long;Lcom/piriform/ccleaner/l/a;Z)V

    .line 1208
    iput-object v5, v0, Lcom/piriform/ccleaner/l/b;->g:Ljava/lang/String;

    .line 2022
    invoke-static {}, Lcom/piriform/ccleaner/l/d;->a()Lcom/piriform/ccleaner/l/d;

    move-result-object v4

    .line 2024
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2025
    const-string/jumbo v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2026
    array-length v6, v5

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_2

    aget-object v7, v5, v1

    .line 2027
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/piriform/ccleaner/scheduler/b;->a(I)Lcom/piriform/ccleaner/scheduler/b;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/piriform/ccleaner/l/d;->a(Lcom/piriform/ccleaner/scheduler/b;)V

    .line 2026
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move v1, v2

    .line 1044
    goto :goto_0

    :cond_1
    move v3, v2

    .line 1045
    goto :goto_1

    .line 2198
    :cond_2
    invoke-static {v4}, Lcom/piriform/ccleaner/l/d;->a(Lcom/piriform/ccleaner/l/d;)Lcom/piriform/ccleaner/l/d;

    move-result-object v1

    iput-object v1, v0, Lcom/piriform/ccleaner/l/b;->d:Lcom/piriform/ccleaner/l/d;

    .line 3029
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3031
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3032
    const-string/jumbo v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3033
    array-length v6, v5

    move v1, v2

    :goto_3
    if-ge v1, v6, :cond_4

    aget-object v7, v5, v1

    .line 3034
    invoke-static {v7}, Lcom/piriform/ccleaner/a/h;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/a/h;

    move-result-object v7

    .line 3035
    if-eqz v7, :cond_3

    .line 3036
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3033
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1051
    :cond_4
    invoke-virtual {v0, v4}, Lcom/piriform/ccleaner/l/b;->a(Ljava/util/Collection;)V

    .line 3162
    iput-boolean v3, v0, Lcom/piriform/ccleaner/l/b;->f:Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_4
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/piriform/ccleaner/o/h$1;->a:Lcom/piriform/ccleaner/o/h;

    .line 4029
    iget-object v1, v1, Lcom/piriform/ccleaner/o/h;->b:Lcom/piriform/ccleaner/b/e;

    .line 81
    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/Throwable;)V

    .line 82
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/o/h$1;->a(Landroid/database/Cursor;)Lcom/piriform/ccleaner/l/c;

    move-result-object v0

    return-object v0
.end method
