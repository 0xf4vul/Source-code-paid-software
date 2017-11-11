.class public final Lcom/avast/android/burger/internal/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/burger/internal/c/i;


# static fields
.field private static final a:J

.field private static final b:J


# instance fields
.field private c:Ljava/lang/Long;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/avast/android/burger/internal/config/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/avast/android/burger/internal/c/a;->a:J

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/avast/android/burger/internal/c/a;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/avast/android/burger/internal/config/a;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/avast/android/burger/internal/c/a;->d:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/avast/android/burger/internal/c/a;->e:Lcom/avast/android/burger/internal/config/a;

    .line 77
    new-instance v0, Lcom/avast/android/burger/internal/c/a$1;

    invoke-direct {v0, p0}, Lcom/avast/android/burger/internal/c/a$1;-><init>(Lcom/avast/android/burger/internal/c/a;)V

    .line 91
    invoke-virtual {v0}, Lcom/avast/android/burger/internal/c/a$1;->b()V

    .line 92
    return-void
.end method

.method private static a(JJJLjava/lang/String;)J
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 106
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "%s is out of range of [%d, %d] (too low). Using minimum. Check configuration"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p6, v2, v3

    .line 108
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :goto_0
    return-wide p2

    .line 110
    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    .line 111
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "%s is out of range of [%d, %d] (too high). Using maximum. Check configuration"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p6, v2, v3

    .line 113
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide p2, p4

    .line 114
    goto :goto_0

    :cond_1
    move-wide p2, p0

    .line 117
    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/burger/internal/c/a;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/avast/android/burger/internal/c/a;->c:Ljava/lang/Long;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/evernote/android/job/i$b;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Lcom/evernote/android/job/i$b;

    invoke-direct {v0, p1}, Lcom/evernote/android/job/i$b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avast/android/burger/internal/c/a;->d:Landroid/content/Context;

    .line 153
    invoke-static {v1}, Lcom/evernote/android/job/a/f;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/i$b;->a(Z)Lcom/evernote/android/job/i$b;

    move-result-object v0

    .line 1909
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/evernote/android/job/i$b;->q:Z

    .line 152
    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 11

    .prologue
    const-wide v4, 0x2aaaaaaaaaaaaaaaL

    const-wide/16 v2, 0x1

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 122
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v7, "sRJ: %d, %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v0

    aput-object p3, v8, v6

    invoke-virtual {v1, v7, v8}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_1
    return-void

    .line 125
    :sswitch_0
    const-string/jumbo v6, "BurgerJob"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "HeartBeatJob"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    .line 127
    :pswitch_0
    const-string/jumbo v6, "interval"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/avast/android/burger/internal/c/a;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    .line 128
    sget-wide v4, Lcom/avast/android/burger/internal/c/b;->a:J

    add-long/2addr v4, v0

    .line 129
    invoke-direct {p0, p3}, Lcom/avast/android/burger/internal/c/a;->c(Ljava/lang/String;)Lcom/evernote/android/job/i$b;

    move-result-object v6

    sget-object v7, Lcom/evernote/android/job/i$c;->b:Lcom/evernote/android/job/i$c;

    .line 1732
    iput-object v7, v6, Lcom/evernote/android/job/i$b;->m:Lcom/evernote/android/job/i$c;

    .line 131
    invoke-virtual {v6, v0, v1, v4, v5}, Lcom/evernote/android/job/i$b;->a(JJ)Lcom/evernote/android/job/i$b;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 133
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v1, Lcom/evernote/android/job/i$a;->a:Lcom/evernote/android/job/i$a;

    .line 132
    invoke-virtual {v0, v2, v3, v1}, Lcom/evernote/android/job/i$b;->a(JLcom/evernote/android/job/i$a;)Lcom/evernote/android/job/i$b;

    move-result-object v0

    .line 147
    :goto_2
    invoke-virtual {v0}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/i;->e()I

    goto :goto_1

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/a;->e:Lcom/avast/android/burger/internal/config/a;

    .line 138
    invoke-interface {v0}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/burger/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v2, Lcom/avast/android/burger/internal/c/a;->a:J

    :goto_3
    const-string/jumbo v6, "interval"

    move-wide v0, p1

    .line 137
    invoke-static/range {v0 .. v6}, Lcom/avast/android/burger/internal/c/a;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    .line 140
    invoke-direct {p0, p3}, Lcom/avast/android/burger/internal/c/a;->c(Ljava/lang/String;)Lcom/evernote/android/job/i$b;

    move-result-object v7

    .line 1858
    invoke-static {}, Lcom/evernote/android/job/i;->a()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string/jumbo v6, "intervalMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/e;->a(JJJLjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/evernote/android/job/i$b;->g:J

    .line 1859
    invoke-static {}, Lcom/evernote/android/job/i;->b()J

    move-result-wide v2

    iget-wide v4, v7, Lcom/evernote/android/job/i$b;->g:J

    const-string/jumbo v6, "flexMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/a/e;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/evernote/android/job/i$b;->h:J

    move-object v0, v7

    .line 142
    goto :goto_2

    .line 138
    :cond_1
    sget-wide v2, Lcom/avast/android/burger/internal/c/a;->b:J

    goto :goto_3

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a37d2df -> :sswitch_1
        -0x8641918 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xa

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 159
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v5, "sIJ: %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-virtual {v0, v5, v6}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 194
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "Unknown tag for scheduling"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :goto_1
    return-void

    .line 160
    :sswitch_0
    const-string/jumbo v5, "DeviceInfoJob"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "HeartBeatJob"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "BurgerJob"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/a;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 164
    new-instance v7, Lcom/evernote/android/job/i$b;

    const-string/jumbo v0, "DeviceInfoJob"

    invoke-direct {v7, v0}, Lcom/evernote/android/job/i$b;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avast/android/burger/internal/c/a;->c:Ljava/lang/Long;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string/jumbo v6, "DeviceInfoJob"

    invoke-static/range {v0 .. v6}, Lcom/avast/android/burger/internal/c/a;->a(JJJLjava/lang/String;)J

    move-result-wide v0

    .line 165
    invoke-virtual {v7, v0, v1}, Lcom/evernote/android/job/i$b;->a(J)Lcom/evernote/android/job/i$b;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/i;->e()I

    goto :goto_1

    .line 172
    :cond_1
    new-instance v0, Lcom/evernote/android/job/i$b;

    const-string/jumbo v1, "DeviceInfoJob"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/i$b;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 173
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/evernote/android/job/i$b;->a(JJ)Lcom/evernote/android/job/i$b;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 174
    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v1, Lcom/evernote/android/job/i$a;->a:Lcom/evernote/android/job/i$a;

    invoke-virtual {v0, v2, v3, v1}, Lcom/evernote/android/job/i$b;->a(JLcom/evernote/android/job/i$a;)Lcom/evernote/android/job/i$b;

    move-result-object v0

    .line 2909
    iput-boolean v4, v0, Lcom/evernote/android/job/i$b;->q:Z

    .line 176
    invoke-virtual {v0}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/i;->e()I

    goto :goto_1

    .line 179
    :pswitch_1
    new-instance v0, Lcom/evernote/android/job/i$b;

    const-string/jumbo v1, "HeartBeatJob"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/i$b;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    .line 180
    invoke-virtual {v0, v2, v3}, Lcom/evernote/android/job/i$b;->a(J)Lcom/evernote/android/job/i$b;

    move-result-object v0

    .line 3909
    iput-boolean v4, v0, Lcom/evernote/android/job/i$b;->q:Z

    .line 182
    invoke-virtual {v0}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/evernote/android/job/i;->e()I

    goto/16 :goto_1

    .line 186
    :pswitch_2
    new-instance v0, Lcom/evernote/android/job/i$b;

    const-string/jumbo v1, "BurgerJob"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/i$b;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, v2, v3}, Lcom/evernote/android/job/i$b;->a(J)Lcom/evernote/android/job/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/burger/internal/c/a;->d:Landroid/content/Context;

    .line 188
    invoke-static {v1}, Lcom/evernote/android/job/a/f;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/i$b;->a(Z)Lcom/evernote/android/job/i$b;

    move-result-object v0

    .line 4909
    iput-boolean v4, v0, Lcom/evernote/android/job/i$b;->q:Z

    .line 190
    invoke-virtual {v0}, Lcom/evernote/android/job/i$b;->a()Lcom/evernote/android/job/i;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/evernote/android/job/i;->e()I

    goto/16 :goto_1

    .line 160
    :sswitch_data_0
    .sparse-switch
        -0x1a37d2df -> :sswitch_1
        -0x8641918 -> :sswitch_2
        0x60e854d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 200
    invoke-static {}, Lcom/evernote/android/job/e;->a()Lcom/evernote/android/job/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evernote/android/job/e;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 217
    :goto_0
    return v0

    .line 204
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    .line 205
    if-ne v3, v2, :cond_1

    .line 206
    new-array v3, v2, [Lcom/evernote/android/job/i;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/android/job/i;

    aget-object v0, v0, v1

    .line 5265
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 5474
    iget-boolean v0, v0, Lcom/evernote/android/job/i$b;->l:Z

    .line 207
    if-nez v0, :cond_3

    move v0, v2

    .line 208
    goto :goto_0

    .line 210
    :cond_1
    if-le v3, v2, :cond_3

    .line 211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/i;

    .line 6265
    iget-object v0, v0, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 6474
    iget-boolean v0, v0, Lcom/evernote/android/job/i$b;->l:Z

    .line 212
    if-nez v0, :cond_2

    move v0, v2

    .line 213
    goto :goto_0

    :cond_3
    move v0, v1

    .line 217
    goto :goto_0
.end method
