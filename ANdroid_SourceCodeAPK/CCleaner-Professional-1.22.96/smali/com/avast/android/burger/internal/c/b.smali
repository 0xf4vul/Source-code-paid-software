.class public final Lcom/avast/android/burger/internal/c/b;
.super Lcom/evernote/android/job/a;
.source "SourceFile"


# static fields
.field public static final a:J

.field private static final l:J


# instance fields
.field b:Lcom/avast/android/burger/internal/server/b;

.field c:Lcom/avast/android/burger/b/b;

.field d:Lcom/avast/android/burger/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 47
    sput-wide v0, Lcom/avast/android/burger/internal/c/b;->a:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/avast/android/burger/internal/c/b;->l:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/evernote/android/job/a;-><init>()V

    return-void
.end method

.method public static a(JJ)J
    .locals 6

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    add-long v2, p2, p0

    .line 86
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 87
    sub-long/2addr v0, p2

    rem-long/2addr v0, p0

    sub-long v0, p0, v0

    .line 92
    :goto_0
    return-wide v0

    .line 89
    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 90
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    sub-long v0, v2, v0

    goto :goto_0
.end method

.method private a(ILandroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4041
    new-instance v0, Lcom/avast/android/burger/a/a;

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/16 v2, 0x2a

    aput v2, v1, v4

    aput v3, v1, v3

    const/4 v2, 0x2

    aput p1, v1, v2

    invoke-direct {v0, v1}, Lcom/avast/android/burger/a/a;-><init>([I)V

    .line 208
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bJR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/avast/android/burger/a/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/avast/android/burger/internal/c/b;->d:Lcom/avast/android/burger/b;

    .line 4550
    iget-boolean v1, v1, Lcom/avast/android/burger/b;->A:Z

    .line 209
    if-eqz v1, :cond_0

    .line 210
    invoke-static {p2, v0}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Landroid/content/Context;Lcom/avast/android/burger/a/i;)V

    .line 212
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, p1, v0}, Lcom/avast/android/burger/internal/e/d;->a(Landroid/content/Context;ZLandroid/content/ComponentName;)V

    .line 114
    return-void
.end method

.method public static a(J)Z
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/avast/android/burger/internal/c/b;->l:J

    add-long/2addr v2, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/evernote/android/job/a$a;)Lcom/evernote/android/job/a$b;
    .locals 6
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Fallthrough is intended"
        value = {
            "SF_SWITCH_FALLTHROUGH"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    .line 1068
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    .line 1069
    if-eqz v0, :cond_0

    .line 1070
    invoke-interface {v0, p0}, Lcom/avast/android/burger/internal/a/k;->a(Lcom/avast/android/burger/internal/c/b;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/b;->b:Lcom/avast/android/burger/internal/server/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/burger/internal/c/b;->c:Lcom/avast/android/burger/b/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/burger/internal/c/b;->d:Lcom/avast/android/burger/b;

    if-nez v0, :cond_3

    .line 129
    :cond_1
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DI failed. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/avast/android/burger/internal/c/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    sget-object v0, Lcom/evernote/android/job/a$b;->c:Lcom/evernote/android/job/a$b;

    .line 198
    :cond_2
    :goto_0
    return-object v0

    .line 133
    :cond_3
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/avast/android/burger/internal/c/b;->c()Landroid/content/Context;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/avast/android/burger/internal/c/b;->d:Lcom/avast/android/burger/b;

    .line 1575
    iget-boolean v2, v2, Lcom/avast/android/burger/b;->D:Z

    .line 135
    if-nez v2, :cond_4

    .line 137
    invoke-static {v1}, Lcom/avast/android/f/c/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 138
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/b;->c:Lcom/avast/android/burger/b/b;

    invoke-interface {v0}, Lcom/avast/android/burger/b/b;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/avast/android/burger/internal/c/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    invoke-direct {p0, v5, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    .line 142
    :cond_4
    sget-object v0, Lcom/evernote/android/job/a$b;->c:Lcom/evernote/android/job/a$b;

    .line 144
    :cond_5
    if-nez v0, :cond_6

    .line 145
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/b;->b:Lcom/avast/android/burger/internal/server/b;

    invoke-virtual {v0}, Lcom/avast/android/burger/internal/server/b;->a()I

    move-result v2

    .line 146
    sget-object v0, Lcom/evernote/android/job/a$b;->c:Lcom/evernote/android/job/a$b;

    .line 147
    packed-switch v2, :pswitch_data_0

    .line 177
    invoke-direct {p0, v4, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    .line 181
    :cond_6
    :goto_1
    sget-object v2, Lcom/avast/android/burger/internal/c/b$1;->a:[I

    invoke-virtual {v0}, Lcom/evernote/android/job/a$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 2399
    :pswitch_0
    iget-object v2, p1, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 3265
    iget-object v2, v2, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 3474
    iget-boolean v2, v2, Lcom/evernote/android/job/i$b;->l:Z

    .line 183
    if-nez v2, :cond_7

    .line 184
    iget-object v2, p0, Lcom/avast/android/burger/internal/c/b;->c:Lcom/avast/android/burger/b/b;

    invoke-interface {v2}, Lcom/avast/android/burger/b/b;->i()V

    .line 188
    :goto_2
    invoke-static {v1, v4}, Lcom/avast/android/burger/internal/c/b;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 150
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    .line 154
    :pswitch_2
    sget-object v0, Lcom/evernote/android/job/a$b;->a:Lcom/evernote/android/job/a$b;

    goto :goto_1

    .line 157
    :pswitch_3
    const/4 v2, 0x7

    invoke-direct {p0, v2, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 160
    :pswitch_4
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 163
    :pswitch_5
    const/4 v2, 0x6

    invoke-direct {p0, v2, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 166
    :pswitch_6
    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 169
    :pswitch_7
    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 172
    :pswitch_8
    const/16 v2, 0x8

    invoke-direct {p0, v2, v1}, Lcom/avast/android/burger/internal/c/b;->a(ILandroid/content/Context;)V

    goto :goto_1

    .line 186
    :cond_7
    iget-object v2, p0, Lcom/avast/android/burger/internal/c/b;->c:Lcom/avast/android/burger/b/b;

    invoke-interface {v2}, Lcom/avast/android/burger/b/b;->g()V

    goto :goto_2

    .line 191
    :pswitch_9
    iget-object v2, p0, Lcom/avast/android/burger/internal/c/b;->c:Lcom/avast/android/burger/b/b;

    invoke-interface {v2}, Lcom/avast/android/burger/b/b;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/avast/android/burger/internal/c/b;->a(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    invoke-static {v1, v5}, Lcom/avast/android/burger/internal/c/b;->a(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_8
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
