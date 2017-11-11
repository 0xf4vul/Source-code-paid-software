.class public final Lcom/avast/android/burger/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/avast/a/b/a/a$e;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x22

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    const-string/jumbo v0, "{\"records\": ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/4 v0, 0x1

    .line 10321
    iget-object v1, p0, Lcom/avast/a/b/a/a$e;->b:Ljava/util/List;

    .line 235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$o;

    .line 236
    if-eqz v1, :cond_5

    .line 237
    const/4 v2, 0x0

    .line 11254
    :goto_1
    const-string/jumbo v1, "{\"record\": {"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11255
    if-eqz v0, :cond_4

    .line 12083
    iget-object v6, v0, Lcom/avast/a/b/a/a$o;->e:Lcom/avast/a/b/a/a$i;

    .line 12297
    const-string/jumbo v1, "\"identity\": {"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12298
    if-eqz v6, :cond_2

    .line 12299
    const-string/jumbo v1, "\"guid\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 12845
    iget-object v1, v6, Lcom/avast/a/b/a/a$i;->d:Ljava/lang/Object;

    .line 12846
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 12847
    check-cast v1, Ljava/lang/String;

    .line 12299
    :goto_2
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12300
    const-string/jumbo v1, "\"hwid\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/avast/a/b/a/a$i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12301
    invoke-virtual {v6}, Lcom/avast/a/b/a/a$i;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12302
    const-string/jumbo v1, ",\"wallet key\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/avast/a/b/a/a$i;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12304
    :cond_0
    invoke-virtual {v6}, Lcom/avast/a/b/a/a$i;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12305
    const-string/jumbo v1, ",\"container id\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/avast/a/b/a/a$i;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12307
    :cond_1
    invoke-virtual {v6}, Lcom/avast/a/b/a/a$i;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12308
    const-string/jumbo v1, ",\"machine id\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/avast/a/b/a/a$i;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12311
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11256
    const-string/jumbo v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13107
    iget-object v6, v0, Lcom/avast/a/b/a/a$o;->f:Lcom/avast/a/b/a/a$m;

    .line 13325
    const-string/jumbo v1, "\"product\": {"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13326
    if-eqz v6, :cond_3

    .line 13327
    const-string/jumbo v1, "\"buildVariant\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13568
    iget v3, v6, Lcom/avast/a/b/a/a$m;->g:I

    .line 13327
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13328
    const-string/jumbo v1, "\"code\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14472
    iget v3, v6, Lcom/avast/a/b/a/a$m;->c:I

    .line 13328
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13329
    const-string/jumbo v1, "\"internalVersion\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14520
    iget v3, v6, Lcom/avast/a/b/a/a$m;->e:I

    .line 13329
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13330
    const-string/jumbo v1, "\"partnerId\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/avast/a/b/a/a$m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13331
    const-string/jumbo v1, "\"platformVersion\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 14673
    iget-object v1, v6, Lcom/avast/a/b/a/a$m;->i:Ljava/lang/Object;

    .line 14674
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 14675
    check-cast v1, Ljava/lang/String;

    .line 13331
    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13332
    const-string/jumbo v1, "\"variant\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15544
    iget v3, v6, Lcom/avast/a/b/a/a$m;->f:I

    .line 13332
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16496
    iget-object v1, v6, Lcom/avast/a/b/a/a$m;->d:Lcom/google/a/c;

    .line 13333
    if-eqz v1, :cond_3

    .line 13334
    const-string/jumbo v1, ", \"version\": \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 17496
    iget-object v3, v6, Lcom/avast/a/b/a/a$m;->d:Lcom/google/a/c;

    .line 13334
    invoke-virtual {v3}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13337
    :cond_3
    const-string/jumbo v1, "}"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11257
    const-string/jumbo v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11258
    invoke-static {v0, v4}, Lcom/avast/android/burger/a/d;->a(Lcom/avast/a/b/a/a$o;Ljava/lang/StringBuilder;)V

    .line 11260
    :cond_4
    const-string/jumbo v0, "}}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 242
    goto/16 :goto_0

    .line 239
    :cond_5
    const-string/jumbo v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto/16 :goto_1

    .line 12849
    :cond_6
    check-cast v1, Lcom/google/a/c;

    .line 12851
    invoke-virtual {v1}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v3

    .line 12852
    invoke-virtual {v1}, Lcom/google/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12853
    iput-object v3, v6, Lcom/avast/a/b/a/a$i;->d:Ljava/lang/Object;

    :cond_7
    move-object v1, v3

    .line 12855
    goto/16 :goto_2

    .line 14677
    :cond_8
    check-cast v1, Lcom/google/a/c;

    .line 14679
    invoke-virtual {v1}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v3

    .line 14680
    invoke-virtual {v1}, Lcom/google/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 14681
    iput-object v3, v6, Lcom/avast/a/b/a/a$m;->i:Ljava/lang/Object;

    :cond_9
    move-object v1, v3

    .line 14683
    goto :goto_3

    .line 243
    :cond_a
    const-string/jumbo v0, "]}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avast/a/b/a/a$g;Z)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    if-eqz p1, :cond_0

    .line 198
    const-string/jumbo v1, "{ \"burgerEvent\": {"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_0
    const-string/jumbo v1, "\"type\": \""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/avast/android/burger/a/d;->e(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v1, "\"time\": \""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9204
    iget-wide v4, p0, Lcom/avast/a/b/a/a$g;->d:J

    .line 201
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v1, "\"customParams\": ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9313
    iget-object v1, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 204
    if-ne v1, v0, :cond_3

    .line 9323
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$c;

    .line 205
    invoke-static {v3, v0}, Lcom/avast/android/burger/a/d;->a(Ljava/lang/StringBuilder;Lcom/avast/a/b/a/a$c;)Ljava/lang/StringBuilder;

    .line 217
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    if-eqz p1, :cond_2

    .line 219
    const-string/jumbo v0, "}}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_2
    return-object v3

    .line 206
    :cond_3
    if-le v1, v0, :cond_1

    .line 10292
    iget-object v1, p0, Lcom/avast/a/b/a/a$g;->h:Ljava/util/List;

    .line 208
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$c;

    .line 209
    if-eqz v1, :cond_4

    move v1, v2

    .line 214
    :goto_1
    invoke-static {v3, v0}, Lcom/avast/android/burger/a/d;->a(Ljava/lang/StringBuilder;Lcom/avast/a/b/a/a$c;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :cond_4
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/avast/a/b/a/a$c;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v3, 0x3a

    const/16 v4, 0x22

    .line 357
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    invoke-virtual {p1}, Lcom/avast/a/b/a/a$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18366
    iget-object v0, p1, Lcom/avast/a/b/a/a$c;->c:Ljava/lang/Object;

    .line 18367
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18368
    check-cast v0, Ljava/lang/String;

    .line 359
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18421
    iget-wide v2, p1, Lcom/avast/a/b/a/a$c;->d:J

    .line 360
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 361
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    return-object v0

    .line 18370
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 18372
    invoke-virtual {v0}, Lcom/google/a/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 18373
    invoke-virtual {v0}, Lcom/google/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18374
    iput-object v1, p1, Lcom/avast/a/b/a/a$c;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 18376
    goto :goto_0
.end method

.method private static a(Lcom/avast/a/b/a/a$o;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 271
    const-string/jumbo v0, "\"events\": ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const/4 v0, 0x1

    .line 18017
    iget-object v1, p0, Lcom/avast/a/b/a/a$o;->d:Ljava/util/List;

    .line 273
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$g;

    .line 274
    if-eqz v0, :cond_0

    .line 277
    if-eqz v1, :cond_1

    .line 278
    const/4 v1, 0x0

    .line 282
    :goto_1
    invoke-static {v0}, Lcom/avast/android/burger/a/d;->d(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 280
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    return-void
.end method

.method public static a(JJZ)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 9162
    cmp-long v2, v6, p0

    if-gez v2, :cond_0

    cmp-long v2, v6, p2

    if-ltz v2, :cond_2

    :cond_0
    move v0, v1

    .line 9168
    :cond_1
    :goto_0
    return v0

    .line 9165
    :cond_2
    add-long v6, p2, p0

    .line 9166
    cmp-long v2, v4, v6

    if-ltz v2, :cond_4

    move v2, v1

    .line 9167
    :goto_1
    if-eqz p4, :cond_5

    .line 9168
    if-nez v2, :cond_3

    sub-long v2, v6, v4

    const-wide/16 v4, 0x2

    div-long v4, p0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v2, v0

    .line 9166
    goto :goto_1

    :cond_5
    move v0, v2

    .line 145
    goto :goto_0
.end method

.method public static a(Lcom/avast/a/b/a/a$g;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$g;->d()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    .line 42
    :goto_0
    return v0

    .line 8179
    :cond_0
    iget-object v0, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 42
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(I[I)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    array-length v0, p1

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "Template event can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    array-length v0, p1

    if-gtz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "Position is greater then templateEvent size."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    .line 118
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    aput p0, v0, v2

    .line 120
    return-object v0
.end method

.method public static b(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const-string/jumbo v0, "null"

    .line 67
    :goto_0
    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string/jumbo v1, "Event\n{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9159
    iget-object v1, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 59
    const-string/jumbo v2, "\n  type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    :cond_2
    const-string/jumbo v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/avast/a/b/a/a$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$g;->d()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avast/android/burger/a/d;->a(Lcom/avast/a/b/a/a$g;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    const-string/jumbo v0, "."

    .line 19159
    iget-object v1, p0, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 369
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
