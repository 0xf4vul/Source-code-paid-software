.class public final Lb/a/a/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    sput-object v2, Lb/a/a/b$f;->a:Ljava/lang/Boolean;

    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/b$f;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 330
    sget-object v0, Lb/a/a/b;->a:[Ljava/lang/String;

    .line 1317
    const-string/jumbo v1, "su"

    invoke-static {v1, v0}, Lb/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lb/a/a/b;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 400
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 401
    if-ltz v0, :cond_0

    .line 402
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 406
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 407
    if-ltz v0, :cond_1

    .line 408
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 411
    :cond_1
    const-string/jumbo v0, "su"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 357
    const-class v2, Lb/a/a/b$f;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lb/a/a/b$f;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 358
    const/4 v1, 0x0

    .line 360
    const-string/jumbo v0, "su -v"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "exit"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lb/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_2

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 387
    :goto_0
    sget-object v1, Lb/a/a/b$f;->b:[Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v1, v3

    .line 389
    :cond_1
    sget-object v0, Lb/a/a/b$f;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
