.class public final Lcom/avast/android/burger/internal/d/c;
.super Lcom/avast/android/burger/internal/d/a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/burger/internal/d/f;


# instance fields
.field private final c:Lcom/avast/android/burger/internal/config/a;


# direct methods
.method public constructor <init>(Lcom/avast/android/burger/internal/config/a;)V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "Records"

    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/d/a;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/avast/android/burger/internal/d/c;->c:Lcom/avast/android/burger/internal/config/a;

    .line 41
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avast/android/burger/internal/d/c;->c:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v0}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v0

    .line 18444
    iget v0, v0, Lcom/avast/android/burger/b;->q:I

    .line 126
    return v0
.end method

.method public final a(Landroid/content/Context;Lcom/avast/a/b/a/a$g;Lcom/avast/a/b/a/a$m;Lcom/avast/a/b/a/a$i;Lcom/avast/a/b/a/a$a;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 82
    iget-object v2, p0, Lcom/avast/android/burger/internal/d/c;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 121
    :goto_0
    return v0

    .line 85
    :cond_0
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/avast/android/burger/internal/d/c;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 87
    monitor-exit p0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/avast/android/burger/internal/d/c;->b(Landroid/content/Context;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/avast/a/b/a/a$o;->a([B)Lcom/avast/a/b/a/a$o;

    move-result-object v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Last record event count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/avast/a/b/a/a$o;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_2
    if-eqz v3, :cond_3

    .line 95
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$o;->d()I

    move-result v2

    iget-object v4, p0, Lcom/avast/android/burger/internal/d/c;->c:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v4}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v4

    .line 9453
    iget v4, v4, Lcom/avast/android/burger/b;->o:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-lt v2, v4, :cond_4

    .line 96
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 10107
    :cond_4
    :try_start_3
    iget-object v2, v3, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    .line 100
    if-eqz v2, :cond_5

    .line 10544
    iget v4, p3, Lcom/avast/a/b/a/a$m;->f:I

    .line 11544
    iget v5, v2, Lcom/avast/a/b/a/a$m;->f:I

    .line 101
    if-ne v4, v5, :cond_5

    .line 102
    invoke-virtual {p3}, Lcom/avast/a/b/a/a$m;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/avast/a/b/a/a$m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 103
    :cond_5
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 12083
    :cond_6
    :try_start_5
    iget-object v2, v3, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    if-eqz v2, :cond_7

    .line 13052
    if-ne v2, p4, :cond_8

    move v2, v1

    .line 106
    :goto_1
    if-nez v2, :cond_16

    .line 107
    :cond_7
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 13055
    :cond_8
    if-eqz p4, :cond_9

    if-nez v2, :cond_a

    :cond_9
    move v2, v0

    .line 13056
    goto :goto_1

    .line 13058
    :cond_a
    :try_start_7
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    move v2, v0

    .line 13059
    goto :goto_1

    .line 13061
    :cond_b
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    move v2, v0

    .line 13062
    goto :goto_1

    .line 13064
    :cond_c
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    move v2, v0

    .line 13065
    goto :goto_1

    .line 13656
    :cond_d
    iget-wide v4, v2, Lcom/avast/a/b/a/a$i;->c:J

    .line 14656
    iget-wide v6, p4, Lcom/avast/a/b/a/a$i;->c:J

    .line 13067
    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    move v2, v0

    .line 13068
    goto :goto_1

    .line 13070
    :cond_e
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    move v2, v0

    .line 13071
    goto :goto_1

    .line 13073
    :cond_f
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    move v2, v0

    .line 13074
    goto :goto_1

    .line 13076
    :cond_10
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    move v2, v0

    .line 13077
    goto :goto_1

    .line 13079
    :cond_11
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    move v2, v0

    .line 13080
    goto/16 :goto_1

    .line 13082
    :cond_12
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    move v2, v0

    .line 13083
    goto/16 :goto_1

    .line 13085
    :cond_13
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    move v2, v0

    .line 13086
    goto/16 :goto_1

    .line 13088
    :cond_14
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    move v2, v0

    .line 13089
    goto/16 :goto_1

    .line 13091
    :cond_15
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$i;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/avast/a/b/a/a$i;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto/16 :goto_1

    .line 15131
    :cond_16
    iget-object v2, v3, Lcom/avast/a/b/a/a$o;->g:Lcom/avast/a/b/a/a$a;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 110
    if-eqz v2, :cond_17

    if-eqz p5, :cond_17

    .line 16105
    if-ne v2, p5, :cond_18

    .line 111
    :goto_2
    if-nez v1, :cond_1b

    .line 112
    :cond_17
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 16108
    :cond_18
    if-eqz v2, :cond_19

    if-nez p5, :cond_1a

    :cond_19
    move v1, v0

    .line 16109
    goto :goto_2

    .line 16859
    :cond_1a
    :try_start_9
    iget-object v1, v2, Lcom/avast/a/b/a/a$a;->f:Lcom/google/a/c;

    .line 16112
    invoke-virtual {v1}, Lcom/google/a/c;->c()[B

    move-result-object v1

    .line 17859
    iget-object v2, p5, Lcom/avast/a/b/a/a$a;->f:Lcom/google/a/c;

    .line 16112
    invoke-virtual {v2}, Lcom/google/a/c;->c()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_2

    .line 115
    :cond_1b
    invoke-virtual {v3}, Lcom/avast/a/b/a/a$o;->f()Lcom/avast/a/b/a/a$o$a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/avast/a/b/a/a$o$a;->a(Lcom/avast/a/b/a/a$g;)Lcom/avast/a/b/a/a$o$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o;->s()[B

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/burger/internal/d/c;->a:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, p1, v1, v2}, Lcom/avast/android/burger/internal/d/c;->a(Landroid/content/Context;[BLjava/lang/String;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v0

    :try_start_a
    monitor-exit p0

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v3, "Failed to append event to last record."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/avast/a/b/a/a$o;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/avast/a/b/a/a$o;->s()[B

    move-result-object v1

    .line 49
    array-length v2, v1

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/avast/android/burger/internal/d/c;->a(Landroid/content/Context;[B)Z

    move-result v0

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$o;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/avast/android/burger/internal/d/c;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 65
    :try_start_0
    invoke-static {v0}, Lcom/avast/a/b/a/a$o;->a([B)Lcom/avast/a/b/a/a$o;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v3, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v4, "Error parsing record from byte array."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v5}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 70
    :cond_1
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Record count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 71
    goto :goto_0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/avast/android/burger/internal/d/c;->c(Landroid/content/Context;)V

    .line 77
    return-void
.end method
