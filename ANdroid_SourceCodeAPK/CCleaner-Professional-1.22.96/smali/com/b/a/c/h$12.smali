.class final Lcom/b/a/c/h$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c/h;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Date;

.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/b/a/c/h;


# direct methods
.method constructor <init>(Lcom/b/a/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/b/a/c/h$12;->d:Lcom/b/a/c/h;

    iput-object p2, p0, Lcom/b/a/c/h$12;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/b/a/c/h$12;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/b/a/c/h$12;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 278
    .line 1283
    iget-object v0, p0, Lcom/b/a/c/h$12;->d:Lcom/b/a/c/h;

    invoke-static {v0}, Lcom/b/a/c/h;->a(Lcom/b/a/c/h;)Lcom/b/a/c/i;

    move-result-object v0

    .line 1816
    iget-object v0, v0, Lcom/b/a/c/i;->c:Lcom/b/a/c/j;

    invoke-virtual {v0}, Lcom/b/a/c/j;->a()Z

    .line 1285
    iget-object v0, p0, Lcom/b/a/c/h$12;->d:Lcom/b/a/c/h;

    iget-object v2, p0, Lcom/b/a/c/h$12;->a:Ljava/util/Date;

    iget-object v3, p0, Lcom/b/a/c/h$12;->b:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/b/a/c/h$12;->c:Ljava/lang/Throwable;

    invoke-static {v0, v2, v3, v4}, Lcom/b/a/c/h;->a(Lcom/b/a/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2055
    invoke-static {}, Lc/a/a/a/a/g/q$a;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    .line 1287
    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/t;

    move-result-object v2

    .line 1288
    if-eqz v2, :cond_1

    iget-object v0, v2, Lc/a/a/a/a/g/t;->b:Lc/a/a/a/a/g/p;

    .line 1291
    :goto_0
    iget-object v3, p0, Lcom/b/a/c/h$12;->d:Lcom/b/a/c/h;

    .line 2508
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/b/a/c/h;->a(Lc/a/a/a/a/g/p;Z)V

    .line 1292
    iget-object v0, p0, Lcom/b/a/c/h$12;->d:Lcom/b/a/c/h;

    invoke-static {v0}, Lcom/b/a/c/h;->b(Lcom/b/a/c/h;)V

    .line 1294
    iget-object v0, p0, Lcom/b/a/c/h$12;->d:Lcom/b/a/c/h;

    .line 2665
    invoke-virtual {v0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v0

    sget-object v3, Lcom/b/a/c/h;->a:Ljava/io/FilenameFilter;

    const/4 v4, 0x4

    sget-object v5, Lcom/b/a/c/h;->c:Ljava/util/Comparator;

    invoke-static {v0, v3, v4, v5}, Lcom/b/a/c/am;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 1296
    iget-object v0, p0, Lcom/b/a/c/h$12;->d:Lcom/b/a/c/h;

    invoke-static {v0, v2}, Lcom/b/a/c/h;->a(Lcom/b/a/c/h;Lc/a/a/a/a/g/t;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/b/a/c/h$12;->d:Lcom/b/a/c/h;

    invoke-static {v0, v2}, Lcom/b/a/c/h;->b(Lcom/b/a/c/h;Lc/a/a/a/a/g/t;)V

    .line 278
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    .line 1288
    goto :goto_0
.end method
