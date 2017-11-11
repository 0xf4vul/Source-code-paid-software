.class final Lcom/avast/android/burger/internal/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/android/burger/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/avast/android/burger/internal/a;


# direct methods
.method private constructor <init>(Lcom/avast/android/burger/internal/a;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/burger/internal/a;B)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/avast/android/burger/internal/a$a;-><init>(Lcom/avast/android/burger/internal/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 33

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v2, v2, Lcom/avast/android/burger/internal/a;->b:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v2}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v11

    .line 1496
    iget-wide v4, v11, Lcom/avast/android/burger/b;->t:J

    .line 121
    const-string/jumbo v2, "configVersion"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v2, v2, Lcom/avast/android/burger/internal/a;->f:Lcom/avast/android/burger/b/b;

    invoke-interface {v2}, Lcom/avast/android/burger/b/b;->c()J

    move-result-wide v6

    .line 123
    cmp-long v2, v16, v4

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move v15, v2

    .line 125
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v2, v2, Lcom/avast/android/burger/internal/a;->f:Lcom/avast/android/burger/b/b;

    .line 126
    invoke-interface {v2}, Lcom/avast/android/burger/b/b;->b()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    cmp-long v2, v16, v6

    if-lez v2, :cond_c

    :cond_3
    const/4 v2, 0x1

    move v14, v2

    .line 130
    :goto_2
    if-eqz v15, :cond_d

    if-eqz v14, :cond_d

    const/4 v2, 0x1

    .line 132
    :goto_3
    const-string/jumbo v3, "burgerEnvelopeCapacity"

    .line 2444
    iget v4, v11, Lcom/avast/android/burger/b;->q:I

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 134
    const-string/jumbo v3, "burgerQueueCapacity"

    .line 2453
    iget v4, v11, Lcom/avast/android/burger/b;->o:I

    .line 134
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 136
    const-string/jumbo v3, "burgerSendingInterval"

    .line 2462
    iget-wide v4, v11, Lcom/avast/android/burger/b;->p:J

    .line 136
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 138
    const-string/jumbo v3, "burgerHeartBeatInterval"

    .line 2489
    iget-wide v4, v11, Lcom/avast/android/burger/b;->s:J

    .line 138
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 140
    const-string/jumbo v3, "burgerFilteringRules"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    .line 141
    const-string/jumbo v3, "burgerABNTests"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    .line 3462
    iget-wide v4, v11, Lcom/avast/android/burger/b;->p:J

    .line 143
    cmp-long v3, v20, v4

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    .line 3489
    :goto_4
    iget-wide v4, v11, Lcom/avast/android/burger/b;->s:J

    .line 144
    cmp-long v4, v22, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    .line 4426
    :goto_5
    iget-object v5, v11, Lcom/avast/android/burger/b;->m:Ljava/lang/String;

    .line 147
    const-string/jumbo v6, "partnerId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 148
    if-nez v5, :cond_10

    if-nez v26, :cond_11

    .line 149
    :cond_4
    const/4 v5, 0x0

    move v13, v5

    .line 153
    :goto_6
    if-eqz v25, :cond_15

    .line 4480
    iget-object v5, v11, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    .line 155
    invoke-virtual {v11}, Lcom/avast/android/burger/b;->b()Lcom/avast/android/burger/b$a;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lcom/avast/android/burger/b$a;->a(Ljava/util/ArrayList;)Lcom/avast/android/burger/b$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/avast/android/burger/b$a;->a()Lcom/avast/android/burger/b;

    move-result-object v6

    .line 5480
    iget-object v6, v6, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    .line 156
    if-eqz v6, :cond_13

    .line 157
    invoke-interface {v6, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v5, 0x1

    .line 6527
    :goto_7
    iget-object v6, v11, Lcom/avast/android/burger/b;->x:Ljava/lang/String;

    .line 166
    const-string/jumbo v7, "alphaWalletKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 167
    move-object/from16 v0, v27

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    const/4 v6, 0x1

    .line 6535
    :goto_8
    iget-object v7, v11, Lcom/avast/android/burger/b;->y:Ljava/lang/String;

    .line 170
    const-string/jumbo v8, "alphaContainerId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 171
    move-object/from16 v0, v28

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    const/4 v7, 0x1

    .line 6568
    :goto_9
    iget-object v8, v11, Lcom/avast/android/burger/b;->C:Ljava/lang/String;

    .line 174
    const-string/jumbo v9, "clientIpAddress"

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 175
    move-object/from16 v0, v29

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_19

    const/4 v8, 0x1

    .line 7399
    :goto_a
    iget v9, v11, Lcom/avast/android/burger/b;->k:I

    .line 178
    const-string/jumbo v10, "appVariant"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 179
    move/from16 v0, v30

    if-eq v9, v0, :cond_1a

    const/4 v9, 0x1

    .line 7550
    :goto_b
    iget-boolean v10, v11, Lcom/avast/android/burger/b;->A:Z

    .line 182
    const-string/jumbo v12, "clientTelemetry"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 184
    move/from16 v0, v31

    if-eq v10, v0, :cond_1b

    const/4 v10, 0x1

    .line 7575
    :goto_c
    iget-boolean v12, v11, Lcom/avast/android/burger/b;->D:Z

    .line 187
    const-string/jumbo v32, "silentMode"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    .line 188
    move/from16 v0, v32

    if-eq v12, v0, :cond_1c

    const/4 v12, 0x1

    .line 190
    :goto_d
    if-nez v15, :cond_5

    .line 8444
    iget v15, v11, Lcom/avast/android/burger/b;->q:I

    .line 191
    move/from16 v0, v18

    if-ne v0, v15, :cond_5

    .line 8453
    iget v15, v11, Lcom/avast/android/burger/b;->o:I

    .line 192
    move/from16 v0, v19

    if-ne v0, v15, :cond_5

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    if-nez v13, :cond_5

    if-nez v9, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v10, :cond_5

    if-nez v8, :cond_5

    if-eqz v12, :cond_1d

    :cond_5
    const/4 v5, 0x1

    .line 204
    :goto_e
    if-eqz v3, :cond_6

    .line 205
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v6, v6, Lcom/avast/android/burger/internal/a;->f:Lcom/avast/android/burger/b/b;

    move-wide/from16 v0, v20

    invoke-interface {v6, v0, v1}, Lcom/avast/android/burger/b/b;->b(J)V

    .line 209
    :cond_6
    if-eqz v5, :cond_20

    .line 212
    invoke-virtual {v11}, Lcom/avast/android/burger/b;->b()Lcom/avast/android/burger/b$a;

    move-result-object v5

    .line 9081
    move/from16 v0, v18

    iput v0, v5, Lcom/avast/android/burger/b$a;->m:I

    .line 9092
    move/from16 v0, v19

    iput v0, v5, Lcom/avast/android/burger/b$a;->j:I

    .line 10070
    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/avast/android/burger/b$a;->k:J

    .line 10103
    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/avast/android/burger/b$a;->n:Ljava/util/ArrayList;

    .line 217
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/avast/android/burger/b$a;->a(Ljava/util/ArrayList;)Lcom/avast/android/burger/b$a;

    move-result-object v5

    .line 10137
    move-wide/from16 v0, v22

    iput-wide v0, v5, Lcom/avast/android/burger/b$a;->q:J

    .line 10153
    move-wide/from16 v0, v16

    iput-wide v0, v5, Lcom/avast/android/burger/b$a;->r:J

    .line 11059
    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/avast/android/burger/b$a;->o:Ljava/lang/String;

    .line 12022
    move/from16 v0, v30

    iput v0, v5, Lcom/avast/android/burger/b$a;->i:I

    .line 12210
    move-object/from16 v0, v27

    iput-object v0, v5, Lcom/avast/android/burger/b$a;->v:Ljava/lang/String;

    .line 12221
    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/avast/android/burger/b$a;->w:Ljava/lang/String;

    .line 12245
    move/from16 v0, v31

    iput-boolean v0, v5, Lcom/avast/android/burger/b$a;->y:Z

    .line 12269
    move-object/from16 v0, v29

    iput-object v0, v5, Lcom/avast/android/burger/b$a;->A:Ljava/lang/String;

    .line 12293
    move/from16 v0, v32

    iput-boolean v0, v5, Lcom/avast/android/burger/b$a;->C:Z

    .line 227
    invoke-virtual {v5}, Lcom/avast/android/burger/b$a;->a()Lcom/avast/android/burger/b;

    move-result-object v5

    .line 229
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v6, v6, Lcom/avast/android/burger/internal/a;->b:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v6, v5}, Lcom/avast/android/burger/internal/config/a;->a(Lcom/avast/android/burger/b;)V

    .line 231
    if-eqz v2, :cond_7

    .line 232
    new-instance v6, Lcom/avast/android/burger/a/h;

    .line 12417
    iget v7, v5, Lcom/avast/android/burger/b;->h:I

    .line 233
    invoke-direct {v6, v7}, Lcom/avast/android/burger/a/h;-><init>(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v7, v7, Lcom/avast/android/burger/internal/a;->a:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Landroid/content/Context;Lcom/avast/android/burger/a/i;)V

    .line 237
    :cond_7
    if-eqz v2, :cond_8

    .line 238
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v6, v6, Lcom/avast/android/burger/internal/a;->f:Lcom/avast/android/burger/b/b;

    move-wide/from16 v0, v16

    invoke-interface {v6, v0, v1}, Lcom/avast/android/burger/b/b;->a(J)V

    .line 243
    :cond_8
    :goto_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v6, v6, Lcom/avast/android/burger/internal/a;->c:Lcom/avast/android/burger/internal/b/c;

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lcom/avast/android/burger/internal/b/c;->a(Ljava/util/List;)V

    .line 246
    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v4, v4, Lcom/avast/android/burger/internal/a;->e:Lcom/avast/android/burger/internal/c/i;

    const-string/jumbo v6, "HeartBeatJob"

    move-wide/from16 v0, v22

    invoke-interface {v4, v0, v1, v6}, Lcom/avast/android/burger/internal/c/i;->a(JLjava/lang/String;)V

    .line 250
    :cond_9
    if-eqz v3, :cond_1e

    if-eqz v14, :cond_1e

    const/4 v3, 0x1

    .line 254
    :goto_10
    if-nez v3, :cond_a

    if-eqz v2, :cond_1f

    .line 12503
    iget-boolean v2, v5, Lcom/avast/android/burger/b;->u:Z

    .line 255
    if-eqz v2, :cond_1f

    :cond_a
    const/4 v2, 0x1

    .line 256
    :goto_11
    if-eqz v2, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avast/android/burger/internal/a$a;->a:Lcom/avast/android/burger/internal/a;

    iget-object v2, v2, Lcom/avast/android/burger/internal/a;->e:Lcom/avast/android/burger/internal/c/i;

    const-string/jumbo v3, "BurgerJob"

    invoke-interface {v2, v3}, Lcom/avast/android/burger/internal/c/i;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_b
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_1

    .line 126
    :cond_c
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_2

    .line 130
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 143
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 144
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 149
    :cond_10
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_11
    const/4 v5, 0x1

    move v13, v5

    goto/16 :goto_6

    .line 157
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 159
    :cond_13
    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 6480
    :cond_15
    iget-object v5, v11, Lcom/avast/android/burger/b;->r:Ljava/util/List;

    .line 162
    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 167
    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 171
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_9

    .line 175
    :cond_19
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 179
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 184
    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 188
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 192
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 250
    :cond_1e
    const/4 v3, 0x0

    goto :goto_10

    .line 255
    :cond_1f
    const/4 v2, 0x0

    goto :goto_11

    :cond_20
    move-object v5, v11

    goto/16 :goto_f
.end method
