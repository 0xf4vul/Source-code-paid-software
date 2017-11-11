.class Lf/d/a/aa$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lf/d/a/aa$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lf/d/a/aa$c;",
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

.field b:Lf/d/a/aa$c;

.field c:I

.field d:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 968
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 969
    invoke-static {}, Lf/d/a/d;->a()Lf/d/a/d;

    move-result-object v0

    iput-object v0, p0, Lf/d/a/aa$a;->a:Lf/d/a/d;

    .line 970
    new-instance v0, Lf/d/a/aa$c;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lf/d/a/aa$c;-><init>(Ljava/lang/Object;J)V

    .line 971
    iput-object v0, p0, Lf/d/a/aa$a;->b:Lf/d/a/aa$c;

    .line 972
    invoke-virtual {p0, v0}, Lf/d/a/aa$a;->set(Ljava/lang/Object;)V

    .line 973
    return-void
.end method

.method private a(Lf/d/a/aa$c;)V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lf/d/a/aa$a;->b:Lf/d/a/aa$c;

    invoke-virtual {v0, p1}, Lf/d/a/aa$c;->set(Ljava/lang/Object;)V

    .line 981
    iput-object p1, p0, Lf/d/a/aa$a;->b:Lf/d/a/aa$c;

    .line 982
    iget v0, p0, Lf/d/a/aa$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/d/a/aa$a;->c:I

    .line 983
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 1044
    invoke-static {}, Lf/d/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    .line 1045
    new-instance v1, Lf/d/a/aa$c;

    iget-wide v2, p0, Lf/d/a/aa$a;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lf/d/a/aa$a;->d:J

    invoke-direct {v1, v0, v2, v3}, Lf/d/a/aa$c;-><init>(Ljava/lang/Object;J)V

    .line 1046
    invoke-direct {p0, v1}, Lf/d/a/aa$a;->a(Lf/d/a/aa$c;)V

    .line 1048
    return-void
.end method

.method public final a(Lf/d/a/aa$b;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/aa$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v12, 0x0

    .line 1052
    monitor-enter p1

    .line 1053
    :try_start_0
    iget-boolean v0, p1, Lf/d/a/aa$b;->e:Z

    if-eqz v0, :cond_1

    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p1, Lf/d/a/aa$b;->f:Z

    .line 1055
    monitor-exit p1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lf/d/a/aa$b;->e:Z

    .line 1058
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    :goto_1
    invoke-virtual {p1}, Lf/d/a/aa$b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4802
    iget-object v0, p1, Lf/d/a/aa$b;->c:Ljava/lang/Object;

    .line 1064
    check-cast v0, Lf/d/a/aa$c;

    .line 1065
    if-nez v0, :cond_2

    .line 5023
    invoke-virtual {p0}, Lf/d/a/aa$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/aa$c;

    .line 1067
    iput-object v0, p1, Lf/d/a/aa$b;->c:Ljava/lang/Object;

    .line 1073
    iget-wide v2, v0, Lf/d/a/aa$c;->b:J

    invoke-virtual {p1, v2, v3}, Lf/d/a/aa$b;->b(J)V

    .line 1076
    :cond_2
    invoke-virtual {p1}, Lf/d/a/aa$b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1080
    iget-object v6, p1, Lf/d/a/aa$b;->b:Lf/i;

    .line 1081
    if-eqz v6, :cond_0

    .line 1085
    invoke-virtual {p1}, Lf/d/a/aa$b;->get()J

    move-result-wide v8

    move-wide v2, v4

    move-object v1, v0

    .line 1088
    :goto_2
    cmp-long v0, v2, v8

    if-eqz v0, :cond_4

    .line 1089
    invoke-virtual {v1}, Lf/d/a/aa$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/d/a/aa$c;

    .line 1090
    if-eqz v0, :cond_4

    .line 1091
    iget-object v1, v0, Lf/d/a/aa$c;->a:Ljava/lang/Object;

    .line 1093
    :try_start_1
    invoke-static {v6, v1}, Lf/d/a/d;->a(Lf/e;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p1, Lf/d/a/aa$b;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    iput-object v12, p1, Lf/d/a/aa$b;->c:Ljava/lang/Object;

    .line 1099
    invoke-static {v0}, Lf/b/b;->a(Ljava/lang/Throwable;)V

    .line 1100
    invoke-virtual {p1}, Lf/d/a/aa$b;->b()V

    .line 1101
    invoke-static {v1}, Lf/d/a/d;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lf/d/a/d;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1102
    invoke-static {v1}, Lf/d/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lf/b/g;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lf/i;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1058
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1106
    :cond_3
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 1111
    invoke-virtual {p1}, Lf/d/a/aa$b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 1114
    goto :goto_2

    .line 1116
    :cond_4
    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 1117
    iput-object v1, p1, Lf/d/a/aa$b;->c:Ljava/lang/Object;

    .line 1118
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v8, v0

    if-eqz v0, :cond_5

    .line 1119
    invoke-virtual {p1, v2, v3}, Lf/d/a/aa$b;->c(J)J

    .line 1123
    :cond_5
    monitor-enter p1

    .line 1124
    :try_start_3
    iget-boolean v0, p1, Lf/d/a/aa$b;->f:Z

    if-nez v0, :cond_6

    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p1, Lf/d/a/aa$b;->e:Z

    .line 1126
    monitor-exit p1

    goto/16 :goto_0

    .line 1129
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1128
    :cond_6
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p1, Lf/d/a/aa$b;->f:Z

    .line 1129
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1028
    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1029
    new-instance v1, Lf/d/a/aa$c;

    iget-wide v2, p0, Lf/d/a/aa$a;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lf/d/a/aa$a;->d:J

    invoke-direct {v1, v0, v2, v3}, Lf/d/a/aa$c;-><init>(Ljava/lang/Object;J)V

    .line 1030
    invoke-direct {p0, v1}, Lf/d/a/aa$a;->a(Lf/d/a/aa$c;)V

    .line 1031
    invoke-virtual {p0}, Lf/d/a/aa$a;->b()V

    .line 1032
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 1036
    invoke-static {p1}, Lf/d/a/d;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 1037
    new-instance v1, Lf/d/a/aa$c;

    iget-wide v2, p0, Lf/d/a/aa$a;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lf/d/a/aa$a;->d:J

    invoke-direct {v1, v0, v2, v3}, Lf/d/a/aa$c;-><init>(Ljava/lang/Object;J)V

    .line 1038
    invoke-direct {p0, v1}, Lf/d/a/aa$a;->a(Lf/d/a/aa$c;)V

    .line 1040
    return-void
.end method

.method b()V
    .locals 0

    .prologue
    .line 1158
    return-void
.end method
