.class public final Lcom/avast/android/burger/internal/BurgerMessageService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field a:Lcom/avast/android/burger/internal/b/c;

.field b:Lcom/avast/android/burger/internal/d/e;

.field c:Lcom/avast/android/burger/internal/d/f;

.field d:Lcom/avast/android/burger/b;

.field e:Lcom/avast/android/burger/internal/c/i;

.field f:Lcom/avast/android/burger/b/b;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "BurgerMessageService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/burger/a/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BurgerEvent:",
            "Lcom/avast/android/burger/a/i;",
            ">(",
            "Landroid/content/Context;",
            "TBurgerEvent;)V"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "Added event:\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/avast/android/burger/a/i;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/burger/internal/BurgerMessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string/jumbo v1, "intent.RECORD_EVENT"

    .line 3069
    iget-object v2, p1, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 86
    invoke-virtual {v2}, Lcom/avast/a/b/a/a$g;->s()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    return-void
.end method

.method private a(Lcom/avast/a/b/a/a$g;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 150
    iget-object v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->a:Lcom/avast/android/burger/internal/b/c;

    .line 4159
    iget-object v1, p1, Lcom/avast/a/b/a/a$g;->c:Ljava/util/List;

    .line 150
    invoke-interface {v0, v1}, Lcom/avast/android/burger/internal/b/c;->a(Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 151
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-interface {v0}, Lcom/avast/android/burger/internal/a/k;->c()Lcom/avast/a/b/a/a$m;

    move-result-object v3

    .line 156
    if-nez v3, :cond_1

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Product info not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    invoke-interface {v0}, Lcom/avast/android/burger/internal/a/k;->d()Lcom/avast/a/b/a/a$i;

    move-result-object v4

    .line 160
    if-nez v4, :cond_2

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Identity is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2
    invoke-interface {v0}, Lcom/avast/android/burger/internal/a/k;->e()Lcom/avast/a/b/a/a$a;

    move-result-object v5

    .line 166
    iget-object v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->c:Lcom/avast/android/burger/internal/d/f;

    move-object v1, p0

    move-object v2, p1

    .line 168
    invoke-interface/range {v0 .. v5}, Lcom/avast/android/burger/internal/d/f;->a(Landroid/content/Context;Lcom/avast/a/b/a/a$g;Lcom/avast/a/b/a/a$m;Lcom/avast/a/b/a/a$i;Lcom/avast/a/b/a/a$a;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->c:Lcom/avast/android/burger/internal/d/f;

    .line 4234
    invoke-static {}, Lcom/avast/a/b/a/a$o;->e()Lcom/avast/a/b/a/a$o$a;

    move-result-object v1

    .line 4235
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/avast/a/b/a/a$o$a;->a(I)Lcom/avast/a/b/a/a$o$a;

    .line 4652
    if-nez v4, :cond_3

    .line 4653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4655
    :cond_3
    iput-object v4, v1, Lcom/avast/a/b/a/a$o$a;->c:Lcom/avast/a/b/a/a$i;

    .line 4657
    iget v2, v1, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 4737
    if-nez v3, :cond_4

    .line 4738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4740
    :cond_4
    iput-object v3, v1, Lcom/avast/a/b/a/a$o$a;->d:Lcom/avast/a/b/a/a$m;

    .line 4742
    iget v2, v1, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 4238
    if-eqz v5, :cond_6

    .line 4822
    if-nez v5, :cond_5

    .line 4823
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4825
    :cond_5
    iput-object v5, v1, Lcom/avast/a/b/a/a$o$a;->e:Lcom/avast/a/b/a/a$a;

    .line 4827
    iget v2, v1, Lcom/avast/a/b/a/a$o$a;->a:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Lcom/avast/a/b/a/a$o$a;->a:I

    .line 4241
    :cond_6
    invoke-virtual {v1, p1}, Lcom/avast/a/b/a/a$o$a;->a(Lcom/avast/a/b/a/a$g;)Lcom/avast/a/b/a/a$o$a;

    .line 4243
    invoke-virtual {v1}, Lcom/avast/a/b/a/a$o$a;->a()Lcom/avast/a/b/a/a$o;

    move-result-object v1

    .line 170
    invoke-interface {v0, p0, v1}, Lcom/avast/android/burger/internal/d/f;->a(Landroid/content/Context;Lcom/avast/a/b/a/a$o;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 172
    invoke-virtual {p0}, Lcom/avast/android/burger/internal/BurgerMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/evernote/android/job/e;->a(Landroid/content/Context;)Lcom/evernote/android/job/e;

    move-result-object v0

    const-string/jumbo v1, "BurgerJob"

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/e;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v6

    .line 174
    :goto_0
    if-eqz v0, :cond_7

    .line 175
    iget-object v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->e:Lcom/avast/android/burger/internal/c/i;

    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->d:Lcom/avast/android/burger/b;

    .line 5462
    iget-wide v2, v1, Lcom/avast/android/burger/b;->p:J

    .line 175
    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->f:Lcom/avast/android/burger/b/b;

    .line 176
    invoke-interface {v1}, Lcom/avast/android/burger/b/b;->h()J

    move-result-wide v4

    .line 175
    invoke-static {v2, v3, v4, v5}, Lcom/avast/android/burger/internal/c/b;->a(JJ)J

    move-result-wide v2

    const-string/jumbo v1, "BurgerJob"

    invoke-interface {v0, v2, v3, v1}, Lcom/avast/android/burger/internal/c/i;->a(JLjava/lang/String;)V

    .line 181
    :cond_7
    :goto_1
    return-void

    :cond_8
    move v0, v7

    .line 173
    goto :goto_0

    .line 179
    :cond_9
    sget-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "Event didn\'t match filter: \n%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/avast/android/burger/a/d;->d(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 3213
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->g:Z

    if-nez v0, :cond_2

    .line 99
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v0, p0}, Lcom/avast/android/burger/internal/a/k;->a(Lcom/avast/android/burger/internal/BurgerMessageService;)V

    .line 102
    iput-boolean v6, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->g:Z

    .line 107
    :cond_2
    const-string/jumbo v0, "intent.RECORD_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3118
    const/4 v1, 0x0

    .line 3120
    :try_start_0
    const-string/jumbo v0, "intent.RECORD_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 3121
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 3124
    invoke-static {v0}, Lcom/avast/a/b/a/a$g;->a([B)Lcom/avast/a/b/a/a$g;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3128
    :goto_1
    invoke-static {v0}, Lcom/avast/android/burger/a/d;->c(Lcom/avast/a/b/a/a$g;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3129
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "Unable to process, invalid proto."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3125
    :catch_0
    move-exception v0

    .line 3126
    :goto_2
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v3, "Failed to recreate proto"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/avast/android/burger/c/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 3132
    :cond_3
    invoke-static {v0}, Lcom/avast/android/burger/a/d;->a(Lcom/avast/a/b/a/a$g;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3133
    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->a:Lcom/avast/android/burger/internal/b/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->c:Lcom/avast/android/burger/internal/d/f;

    if-nez v1, :cond_5

    .line 3134
    :cond_4
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "DI failed, unable to process"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3137
    :cond_5
    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Lcom/avast/a/b/a/a$g;)V

    .line 3187
    iget-object v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->b:Lcom/avast/android/burger/internal/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->d:Lcom/avast/android/burger/b;

    if-eqz v0, :cond_0

    .line 3188
    iget-object v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->b:Lcom/avast/android/burger/internal/d/e;

    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->d:Lcom/avast/android/burger/b;

    invoke-interface {v0, p0, v1}, Lcom/avast/android/burger/internal/d/e;->a(Landroid/content/Context;Lcom/avast/android/burger/b;)Ljava/util/List;

    move-result-object v0

    .line 3189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3190
    if-ne v1, v6, :cond_7

    .line 3192
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$g;

    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Lcom/avast/a/b/a/a$g;)V

    .line 3198
    :cond_6
    if-lez v1, :cond_0

    .line 3199
    iget-object v0, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->b:Lcom/avast/android/burger/internal/d/e;

    invoke-interface {v0, p0}, Lcom/avast/android/burger/internal/d/e;->d(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3193
    :cond_7
    if-lez v1, :cond_6

    .line 3194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/b/a/a$g;

    .line 3195
    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Lcom/avast/a/b/a/a$g;)V

    goto :goto_3

    .line 3210
    :cond_8
    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->d:Lcom/avast/android/burger/b;

    if-eqz v1, :cond_9

    .line 3212
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$g;->f()Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->d:Lcom/avast/android/burger/b;

    .line 3417
    iget v1, v1, Lcom/avast/android/burger/b;->h:I

    .line 3212
    invoke-virtual {v0, v1}, Lcom/avast/a/b/a/a$g$a;->a(I)Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/a/b/a/a$g$a;->a()Lcom/avast/a/b/a/a$g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Lcom/avast/a/b/a/a$g;)V

    goto/16 :goto_0

    .line 3215
    :cond_9
    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->b:Lcom/avast/android/burger/internal/d/e;

    if-nez v1, :cond_a

    .line 3216
    new-instance v1, Lcom/avast/android/burger/internal/d/b;

    invoke-direct {v1}, Lcom/avast/android/burger/internal/d/b;-><init>()V

    iput-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->b:Lcom/avast/android/burger/internal/d/e;

    .line 3218
    :cond_a
    iget-object v1, p0, Lcom/avast/android/burger/internal/BurgerMessageService;->b:Lcom/avast/android/burger/internal/d/e;

    invoke-interface {v1, p0, v0}, Lcom/avast/android/burger/internal/d/e;->a(Landroid/content/Context;Lcom/avast/a/b/a/a$g;)Z

    goto/16 :goto_0

    .line 3125
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method
