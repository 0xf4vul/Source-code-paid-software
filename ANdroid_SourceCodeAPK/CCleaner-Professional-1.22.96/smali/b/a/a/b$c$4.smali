.class final Lb/a/a/b$c$4;
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
    .line 1489
    iput-object p1, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1492
    iget-object v1, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    monitor-enter v1

    .line 1493
    :try_start_0
    iget-object v2, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    .line 1975
    iget-object v2, v2, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1493
    if-nez v2, :cond_0

    .line 1494
    monitor-exit v1

    .line 1526
    :goto_0
    return-void

    .line 1500
    :cond_0
    iget-object v2, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    .line 2975
    iget-object v2, v2, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1500
    invoke-static {v2}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1501
    if-nez v2, :cond_3

    .line 1509
    :goto_1
    if-eqz v0, :cond_1

    .line 1510
    iget-object v2, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    .line 3975
    invoke-virtual {v2, v0}, Lb/a/a/b$c;->a(Ljava/lang/String;)V

    .line 1511
    iget-object v2, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    iget-object v3, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    .line 4975
    iget-object v3, v3, Lb/a/a/b$c;->c:Lb/a/a/e$a;

    .line 5975
    invoke-virtual {v2, v0, v3}, Lb/a/a/b$c;->a(Ljava/lang/String;Lb/a/a/e$a;)V

    .line 1512
    iget-object v2, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    iget-object v3, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    .line 6975
    iget-object v3, v3, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1512
    invoke-static {v3}, Lb/a/a/b$b;->d(Lb/a/a/b$b;)Lb/a/a/b$d;

    move-result-object v3

    .line 7975
    invoke-virtual {v2, v0, v3}, Lb/a/a/b$c;->a(Ljava/lang/String;Lb/a/a/e$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1515
    :cond_1
    if-eqz p1, :cond_2

    .line 1517
    :try_start_1
    iget-object v0, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    iget-object v2, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    .line 8975
    iget-object v2, v2, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1517
    invoke-static {v2}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9975
    iput v2, v0, Lb/a/a/b$c;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1523
    :goto_2
    :try_start_2
    iget-object v0, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    iget-object v2, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    .line 10975
    iget-object v2, v2, Lb/a/a/b$c;->i:Lb/a/a/b$b;

    .line 1523
    invoke-static {v2}, Lb/a/a/b$b;->c(Lb/a/a/b$b;)Ljava/lang/String;

    move-result-object v2

    .line 11975
    iput-object v2, v0, Lb/a/a/b$c;->g:Ljava/lang/String;

    .line 1524
    iget-object v0, p0, Lb/a/a/b$c$4;->a:Lb/a/a/b$c;

    .line 12975
    invoke-virtual {v0}, Lb/a/a/b$c;->b()V

    .line 1526
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1504
    :cond_3
    if-lez v2, :cond_4

    .line 1505
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1506
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1521
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1
.end method
