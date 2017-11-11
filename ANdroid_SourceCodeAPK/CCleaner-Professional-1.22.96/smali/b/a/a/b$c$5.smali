.class final Lb/a/a/b$c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/b$c;->f()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/b$c;


# direct methods
.method constructor <init>(Lb/a/a/b$c;)V
    .locals 0

    .prologue
    .line 1530
    iput-object p1, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1533
    iget-object v1, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    monitor-enter v1

    .line 1534
    :try_start_0
    iget-object v0, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    .line 1975
    iget-object v0, v0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1534
    if-nez v0, :cond_0

    .line 1535
    monitor-exit v1

    .line 1557
    :goto_0
    return-void

    .line 1540
    :cond_0
    iget-object v0, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    .line 2975
    iget-object v0, v0, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1540
    invoke-static {v0}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1541
    if-nez v0, :cond_5

    .line 1542
    const/4 p1, 0x0

    .line 1547
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 1548
    iget-object v2, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    .line 3975
    iget-boolean v2, v2, Lb/a/a/b$c;->b:Z

    .line 1548
    if-eqz v2, :cond_2

    .line 1549
    iget-object v2, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    .line 4975
    invoke-virtual {v2, p1}, Lb/a/a/b$c;->a(Ljava/lang/String;)V

    .line 1550
    :cond_2
    iget-object v2, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    iget-object v3, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    .line 5975
    iget-object v3, v3, Lb/a/a/b$c;->d:Lb/a/a/e$a;

    .line 6975
    invoke-virtual {v2, p1, v3}, Lb/a/a/b$c;->a(Ljava/lang/String;Lb/a/a/e$a;)V

    .line 1553
    :cond_3
    if-ltz v0, :cond_4

    .line 1554
    iget-object v0, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    iget-object v2, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    .line 7975
    iget-object v2, v2, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1554
    invoke-static {v2}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v2

    .line 8975
    iput-object v2, v0, Lb/a/a/b$c;->h:Ljava/lang/String;

    .line 1555
    iget-object v0, p0, Lb/a/a/b$c$5;->a:Lb/a/a/b$c;

    .line 9975
    invoke-virtual {v0}, Lb/a/a/b$c;->b()V

    .line 1557
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1543
    :cond_5
    if-lez v0, :cond_1

    .line 1544
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_1
.end method
