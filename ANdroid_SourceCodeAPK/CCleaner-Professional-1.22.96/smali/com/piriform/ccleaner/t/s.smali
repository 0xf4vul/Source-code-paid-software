.class public final Lcom/piriform/ccleaner/t/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/t/g$a;


# instance fields
.field final a:Lcom/piriform/ccleaner/t/t;

.field final b:Lcom/piriform/ccleaner/t/g;

.field public final c:Lcom/piriform/ccleaner/t/y;

.field public final d:Lcom/piriform/ccleaner/t/e;

.field public final e:Lcom/piriform/ccleaner/t/k;

.field f:Lcom/piriform/ccleaner/t/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/t/t;Lcom/piriform/ccleaner/t/y;Lcom/piriform/ccleaner/t/e;Lcom/piriform/ccleaner/t/k;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/piriform/ccleaner/t/s;->a:Lcom/piriform/ccleaner/t/t;

    .line 27
    iput-object p3, p0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    .line 28
    iput-object p4, p0, Lcom/piriform/ccleaner/t/s;->d:Lcom/piriform/ccleaner/t/e;

    .line 29
    iput-object p5, p0, Lcom/piriform/ccleaner/t/s;->e:Lcom/piriform/ccleaner/t/k;

    .line 30
    new-instance v0, Lcom/piriform/ccleaner/t/g;

    invoke-direct {v0, p1, p0}, Lcom/piriform/ccleaner/t/g;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/t/g$a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/s;->b:Lcom/piriform/ccleaner/t/g;

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 49
    iget-object v2, p0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v3, p0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    .line 3067
    iget-object v0, v3, Lcom/piriform/ccleaner/t/y;->c:Lcom/piriform/ccleaner/s/k;

    iget-object v1, v3, Lcom/piriform/ccleaner/t/y;->d:Lcom/piriform/ccleaner/f/d;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/t/w;->a(Lcom/piriform/ccleaner/s/k;Lcom/piriform/ccleaner/f/d;)Ljava/util/List;

    move-result-object v0

    .line 3068
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/u;

    .line 3140
    iget-object v1, v0, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 3069
    sget-object v5, Lcom/piriform/ccleaner/t/u$b;->e:Lcom/piriform/ccleaner/t/u$b;

    if-ne v1, v5, :cond_0

    .line 4080
    iget-object v1, v3, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/t/u;

    .line 4089
    const-string/jumbo v6, "path"

    invoke-virtual {v1, v6}, Lcom/piriform/ccleaner/t/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "path"

    invoke-virtual {v0, v6}, Lcom/piriform/ccleaner/t/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4081
    if-eqz v1, :cond_1

    .line 4082
    const/4 v1, 0x1

    .line 3070
    :goto_0
    if-nez v1, :cond_0

    .line 3071
    iget-object v1, v3, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/piriform/ccleaner/t/s;->f:Lcom/piriform/ccleaner/t/o;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 53
    iget-object v1, p0, Lcom/piriform/ccleaner/t/s;->f:Lcom/piriform/ccleaner/t/o;

    invoke-interface {v1, p0, v0}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/u;)V

    .line 55
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/piriform/ccleaner/t/s;->b()V

    .line 57
    return-void

    .line 4085
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3076
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 36
    iget-object v2, p0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v3, p0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    .line 1045
    iget-object v0, v3, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/u;

    .line 1046
    const-string/jumbo v4, "path"

    invoke-virtual {v0, v4}, Lcom/piriform/ccleaner/t/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2031
    iget-object v1, v0, Lcom/piriform/ccleaner/t/u;->e:Ljava/util/UUID;

    .line 2057
    iget-object v0, v3, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/u;

    .line 3031
    iget-object v5, v0, Lcom/piriform/ccleaner/t/u;->e:Ljava/util/UUID;

    .line 2058
    if-ne v5, v1, :cond_1

    .line 2059
    iget-object v3, v3, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v1

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/t/s;->f:Lcom/piriform/ccleaner/t/o;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 40
    iget-object v1, p0, Lcom/piriform/ccleaner/t/s;->f:Lcom/piriform/ccleaner/t/o;

    invoke-interface {v1, p0, v0}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;)V

    .line 43
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p0}, Lcom/piriform/ccleaner/t/s;->b()V

    .line 45
    return-void

    .line 1053
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 24

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    monitor-enter v11

    .line 77
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/piriform/ccleaner/t/s;->c:Lcom/piriform/ccleaner/t/y;

    .line 4097
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4099
    iget-object v2, v12, Lcom/piriform/ccleaner/t/y;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/t/u;

    .line 5031
    iget-object v15, v2, Lcom/piriform/ccleaner/t/u;->e:Ljava/util/UUID;

    .line 4101
    iget-object v4, v12, Lcom/piriform/ccleaner/t/y;->b:Lcom/piriform/ccleaner/t/v;

    .line 6027
    sget-object v3, Lcom/piriform/ccleaner/t/v$1;->a:[I

    .line 6140
    iget-object v5, v2, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 6027
    invoke-virtual {v5}, Lcom/piriform/ccleaner/t/u$b;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 6041
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unhandled case: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14140
    iget-object v2, v2, Lcom/piriform/ccleaner/t/u;->d:Lcom/piriform/ccleaner/t/u$b;

    .line 6041
    invoke-virtual {v2}, Lcom/piriform/ccleaner/t/u$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 7046
    :pswitch_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7048
    sget-object v5, Lcom/piriform/ccleaner/t/x$b;->i:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v2, v5}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v5

    .line 7049
    sget-object v6, Lcom/piriform/ccleaner/t/x$b;->h:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v2, v6}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v6

    .line 7050
    sget-object v7, Lcom/piriform/ccleaner/t/x$b;->k:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v2, v7}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v2

    .line 7052
    const/high16 v7, 0x42c80000    # 100.0f

    iget-object v8, v4, Lcom/piriform/ccleaner/t/v;->c:Lcom/piriform/ccleaner/t/t;

    invoke-virtual {v8}, Lcom/piriform/ccleaner/t/t;->a()F

    move-result v8

    sub-float/2addr v7, v8

    .line 7054
    iget-object v8, v4, Lcom/piriform/ccleaner/t/v;->c:Lcom/piriform/ccleaner/t/t;

    invoke-virtual {v8}, Lcom/piriform/ccleaner/t/t;->a()F

    move-result v8

    invoke-static {v5, v8, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 7055
    invoke-static {v6, v7, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 7056
    iget-object v4, v4, Lcom/piriform/ccleaner/t/v;->c:Lcom/piriform/ccleaner/t/t;

    .line 8053
    iget v4, v4, Lcom/piriform/ccleaner/t/t;->b:F

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    .line 7056
    invoke-static {v2, v4, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    move-object v2, v3

    .line 4102
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 15115
    new-instance v3, Lcom/piriform/ccleaner/t/y$a;

    invoke-direct {v3, v15, v2}, Lcom/piriform/ccleaner/t/y$a;-><init>(Ljava/util/UUID;Ljava/util/List;)V

    .line 4103
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8062
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8064
    iget-object v4, v4, Lcom/piriform/ccleaner/t/v;->a:Lcom/piriform/ccleaner/t/m;

    .line 10022
    const-string/jumbo v5, "/proc/stat"

    .line 9034
    invoke-static {v5}, Lcom/piriform/ccleaner/t/l;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 9036
    array-length v6, v5

    if-nez v6, :cond_2

    .line 9037
    const/4 v4, 0x0

    .line 8066
    :goto_2
    if-eqz v4, :cond_1

    .line 8067
    sget-object v5, Lcom/piriform/ccleaner/t/x$b;->c:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v2, v5}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v5

    .line 10090
    iget v6, v4, Lcom/piriform/ccleaner/t/m$a;->a:I

    .line 8067
    int-to-float v6, v6

    invoke-static {v5, v6, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 8068
    sget-object v5, Lcom/piriform/ccleaner/t/x$b;->b:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v2, v5}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v5

    .line 10094
    iget v6, v4, Lcom/piriform/ccleaner/t/m$a;->b:I

    .line 8068
    int-to-float v6, v6

    invoke-static {v5, v6, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 8069
    sget-object v5, Lcom/piriform/ccleaner/t/x$b;->d:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v2, v5}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v2

    .line 10098
    iget v4, v4, Lcom/piriform/ccleaner/t/m$a;->c:I

    .line 8069
    int-to-float v4, v4

    invoke-static {v2, v4, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    :cond_1
    move-object v2, v3

    .line 6031
    goto :goto_1

    .line 9040
    :cond_2
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v8, 0x2

    aget-object v8, v5, v8

    .line 9041
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 9042
    const/4 v8, 0x3

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 9044
    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    const/4 v10, 0x2

    aget-object v10, v5, v10

    .line 9045
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v16, v16, v18

    const/4 v10, 0x3

    aget-object v10, v5, v10

    .line 9046
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v16, v16, v18

    const/4 v10, 0x4

    aget-object v10, v5, v10

    .line 9047
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v16, v16, v18

    const/4 v10, 0x5

    aget-object v10, v5, v10

    .line 9048
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v16, v16, v18

    const/4 v10, 0x6

    aget-object v10, v5, v10

    .line 9049
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v16, v16, v18

    const/4 v10, 0x7

    aget-object v10, v5, v10

    .line 9050
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v16, v16, v18

    const/16 v10, 0x8

    aget-object v10, v5, v10

    .line 9051
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v16, v16, v18

    const/16 v10, 0x9

    aget-object v5, v5, v10

    .line 9052
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    add-double v16, v16, v18

    .line 9053
    iget-wide v0, v4, Lcom/piriform/ccleaner/t/m;->a:D

    move-wide/from16 v18, v0

    sub-double v18, v6, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    .line 9054
    iget-wide v0, v4, Lcom/piriform/ccleaner/t/m;->b:D

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    .line 9055
    iget-wide v0, v4, Lcom/piriform/ccleaner/t/m;->c:D

    move-wide/from16 v22, v0

    sub-double v22, v16, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    .line 9057
    iput-wide v6, v4, Lcom/piriform/ccleaner/t/m;->a:D

    .line 9058
    iput-wide v8, v4, Lcom/piriform/ccleaner/t/m;->b:D

    .line 9059
    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/piriform/ccleaner/t/m;->c:D

    .line 9061
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v18

    div-double v4, v4, v22

    double-to-int v5, v4

    .line 9062
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v20

    div-double v6, v6, v22

    double-to-int v7, v6

    .line 9063
    rsub-int/lit8 v4, v7, 0x64

    sub-int/2addr v4, v5

    .line 9066
    if-gez v4, :cond_8

    .line 9067
    add-int/2addr v5, v4

    .line 9068
    const/4 v4, 0x0

    move v6, v5

    move v5, v4

    .line 10080
    :goto_3
    new-instance v4, Lcom/piriform/ccleaner/t/m$a;

    invoke-direct {v4, v6, v7, v5}, Lcom/piriform/ccleaner/t/m$a;-><init>(III)V

    goto/16 :goto_2

    .line 11076
    :pswitch_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 11078
    iget-object v3, v4, Lcom/piriform/ccleaner/t/v;->b:Lcom/piriform/ccleaner/t/h;

    .line 13018
    const-string/jumbo v4, "/proc/meminfo"

    .line 12020
    invoke-static {v4}, Lcom/piriform/ccleaner/t/l;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 12022
    array-length v5, v4

    if-nez v5, :cond_4

    .line 12023
    const/4 v3, 0x0

    .line 11080
    :goto_4
    if-eqz v3, :cond_3

    .line 13132
    iget-object v4, v2, Lcom/piriform/ccleaner/t/u;->c:Lcom/piriform/ccleaner/t/x;

    .line 14050
    iget-wide v6, v3, Lcom/piriform/ccleaner/t/h$a;->a:J

    .line 11081
    long-to-float v5, v6

    invoke-static {v4, v5, v10}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 11082
    sget-object v4, Lcom/piriform/ccleaner/t/x$b;->f:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v2, v4}, Lcom/piriform/ccleaner/t/u;->b(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v4

    .line 14054
    iget-wide v6, v3, Lcom/piriform/ccleaner/t/h$a;->b:J

    .line 11082
    long-to-float v5, v6

    invoke-static {v4, v5, v10}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    .line 11083
    sget-object v4, Lcom/piriform/ccleaner/t/x$b;->e:Lcom/piriform/ccleaner/t/x$b;

    invoke-virtual {v2, v4}, Lcom/piriform/ccleaner/t/u;->a(Lcom/piriform/ccleaner/t/x$b;)Lcom/piriform/ccleaner/t/x;

    move-result-object v2

    .line 14058
    iget-wide v4, v3, Lcom/piriform/ccleaner/t/h$a;->c:J

    .line 11083
    long-to-float v3, v4

    invoke-static {v2, v3, v10}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/x;FLjava/util/List;)V

    :cond_3
    move-object v2, v10

    .line 6033
    goto/16 :goto_1

    .line 12026
    :cond_4
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/piriform/ccleaner/core/h;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/core/h;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/piriform/ccleaner/core/h;->a(JLcom/piriform/ccleaner/core/h;)J

    move-result-wide v4

    .line 12027
    iget-object v3, v3, Lcom/piriform/ccleaner/t/h;->a:Lcom/piriform/ccleaner/t/a;

    .line 13026
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 13027
    iget-object v3, v3, Lcom/piriform/ccleaner/t/a;->a:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 13028
    invoke-virtual {v3, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 13030
    iget-wide v6, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 12028
    sub-long v8, v4, v6

    .line 13040
    new-instance v3, Lcom/piriform/ccleaner/t/h$a;

    invoke-direct/range {v3 .. v9}, Lcom/piriform/ccleaner/t/h$a;-><init>(JJJ)V

    goto :goto_4

    .line 6035
    :pswitch_3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/u;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_1

    .line 6037
    :pswitch_4
    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/t/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/u;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_1

    .line 6039
    :pswitch_5
    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/t/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/piriform/ccleaner/t/v;->a(Lcom/piriform/ccleaner/t/u;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_1

    .line 77
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/piriform/ccleaner/t/y$a;

    .line 78
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/t/s;->f:Lcom/piriform/ccleaner/t/o;

    if-eqz v4, :cond_6

    .line 79
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/piriform/ccleaner/t/s;->f:Lcom/piriform/ccleaner/t/o;

    .line 15124
    iget-object v5, v2, Lcom/piriform/ccleaner/t/y$a;->a:Ljava/util/UUID;

    .line 15128
    iget-object v2, v2, Lcom/piriform/ccleaner/t/y$a;->b:Ljava/util/List;

    .line 79
    move-object/from16 v0, p0

    invoke-interface {v4, v0, v5, v2}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;Ljava/util/List;)V

    goto :goto_5

    .line 82
    :cond_7
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_8
    move v6, v5

    move v5, v4

    goto/16 :goto_3

    .line 6027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/piriform/ccleaner/t/s;->a:Lcom/piriform/ccleaner/t/t;

    .line 16038
    iget-object v1, v0, Lcom/piriform/ccleaner/t/t;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/piriform/ccleaner/t/t;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    iget-object v0, p0, Lcom/piriform/ccleaner/t/s;->b:Lcom/piriform/ccleaner/t/g;

    .line 16062
    iget-object v1, v0, Lcom/piriform/ccleaner/t/g;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method
