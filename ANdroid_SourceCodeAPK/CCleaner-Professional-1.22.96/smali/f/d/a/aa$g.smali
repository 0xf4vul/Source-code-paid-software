.class final Lf/d/a/aa$g;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Lf/d/a/aa$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lf/d/a/aa$d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lf/d/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 848
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 849
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/aa$g;->a:Lf/d/a/d;

    .line 850
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 865
    invoke-static {}, Lf/d/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/d/a/aa$g;->add(Ljava/lang/Object;)Z

    .line 866
    iget v0, p0, Lf/d/a/aa$g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/d/a/aa$g;->b:I

    .line 867
    return-void
.end method

.method public final a(Lf/d/a/aa$b;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/aa$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 871
    monitor-enter p1

    .line 872
    :try_start_0
    iget-boolean v0, p1, Lf/d/a/aa$b;->e:Z

    if-eqz v0, :cond_1

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p1, Lf/d/a/aa$b;->f:Z

    .line 874
    monitor-exit p1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lf/d/a/aa$b;->e:Z

    .line 877
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    :goto_1
    invoke-virtual {p1}, Lf/d/a/aa$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    iget v6, p0, Lf/d/a/aa$g;->b:I

    .line 1802
    iget-object v0, p1, Lf/d/a/aa$b;->c:Ljava/lang/Object;

    .line 884
    check-cast v0, Ljava/lang/Integer;

    .line 885
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 887
    :goto_2
    iget-object v7, p1, Lf/d/a/aa$b;->b:Lf/i;

    .line 888
    if-eqz v7, :cond_0

    .line 892
    invoke-virtual {p1}, Lf/d/a/aa$b;->get()J

    move-result-wide v8

    move-wide v2, v4

    .line 895
    :goto_3
    cmp-long v10, v2, v8

    if-eqz v10, :cond_3

    if-ge v0, v6, :cond_3

    .line 896
    invoke-virtual {p0, v0}, Lf/d/a/aa$g;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 898
    :try_start_1
    invoke-static {v7, v10}, Lf/d/a/d;->a(Lf/e;Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-nez v10, :cond_0

    .line 909
    invoke-virtual {p1}, Lf/d/a/aa$b;->c()Z

    move-result v10

    if-nez v10, :cond_0

    .line 912
    add-int/lit8 v0, v0, 0x1

    .line 913
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 914
    goto :goto_3

    .line 877
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 885
    goto :goto_2

    .line 901
    :catch_0
    move-exception v0

    .line 902
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 903
    invoke-virtual {p1}, Lf/d/a/aa$b;->b()V

    .line 904
    invoke-static {v10}, Lf/d/a/d;->c(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v10}, Lf/d/a/d;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    invoke-static {v10}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lf/b/g;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v7, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 915
    :cond_3
    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    .line 916
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lf/d/a/aa$b;->c:Ljava/lang/Object;

    .line 917
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v8, v6

    if-eqz v0, :cond_4

    .line 918
    invoke-virtual {p1, v2, v3}, Lf/d/a/aa$b;->c(J)J

    .line 922
    :cond_4
    monitor-enter p1

    .line 923
    :try_start_3
    iget-boolean v0, p1, Lf/d/a/aa$b;->f:Z

    if-nez v0, :cond_5

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p1, Lf/d/a/aa$b;->e:Z

    .line 925
    monitor-exit p1

    goto :goto_0

    .line 928
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 927
    :cond_5
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p1, Lf/d/a/aa$b;->f:Z

    .line 928
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 853
    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/d/a/aa$g;->add(Ljava/lang/Object;)Z

    .line 854
    iget v0, p0, Lf/d/a/aa$g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/d/a/aa$g;->b:I

    .line 855
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 859
    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/d/a/aa$g;->add(Ljava/lang/Object;)Z

    .line 860
    iget v0, p0, Lf/d/a/aa$g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/d/a/aa$g;->b:I

    .line 861
    return-void
.end method
