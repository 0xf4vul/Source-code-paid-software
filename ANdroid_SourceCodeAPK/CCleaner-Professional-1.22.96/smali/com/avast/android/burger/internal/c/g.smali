.class public final Lcom/avast/android/burger/internal/c/g;
.super Lcom/evernote/android/job/a;
.source "SourceFile"


# instance fields
.field a:Lcom/avast/android/burger/b;

.field b:Lcom/avast/android/burger/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/evernote/android/job/a;-><init>()V

    return-void
.end method

.method private static a(Lcom/avast/android/burger/b/b;Landroid/content/Context;ZLcom/avast/android/burger/a/k;)V
    .locals 6

    .prologue
    .line 105
    .line 4138
    iget-object v0, p3, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    invoke-static {v0}, Lcom/avast/android/burger/a/d;->e(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p3}, Lcom/avast/android/burger/a/k;->b()J

    move-result-wide v2

    invoke-interface {p0, v0}, Lcom/avast/android/burger/b/b;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p2}, Lcom/avast/android/burger/a/d;->a(JJZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    sget-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HeartBeatJob: Threshold filter - ignoring event:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/avast/android/burger/a/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {p1, p3}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Landroid/content/Context;Lcom/avast/android/burger/a/i;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p0, v0, v2, v3}, Lcom/avast/android/burger/b/b;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static a(Lcom/avast/android/burger/b;Lcom/avast/android/burger/b/b;Landroid/content/Context;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    .line 3417
    iget v1, p0, Lcom/avast/android/burger/b;->h:I

    .line 78
    if-nez v1, :cond_0

    .line 79
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "HeartBeatJob: Prefix not set"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :goto_0
    return v0

    .line 3489
    :cond_0
    iget-wide v2, p0, Lcom/avast/android/burger/b;->s:J

    .line 83
    new-instance v0, Lcom/avast/android/burger/a/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/burger/a/e;-><init>(IJ)V

    invoke-static {p1, p2, p3, v0}, Lcom/avast/android/burger/internal/c/g;->a(Lcom/avast/android/burger/b/b;Landroid/content/Context;ZLcom/avast/android/burger/a/k;)V

    .line 3558
    iget-object v0, p0, Lcom/avast/android/burger/b;->B:Lcom/avast/android/burger/c;

    .line 86
    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0}, Lcom/avast/android/burger/c;->a()Lcom/avast/a/a/a/a/a$c$a;

    move-result-object v0

    invoke-static {v1, v0, v2, v3}, Lcom/avast/android/burger/a/b;->a(ILcom/avast/a/a/a/a/a$c$a;J)Lcom/avast/android/burger/a/b;

    move-result-object v0

    .line 87
    invoke-static {p1, p2, p3, v0}, Lcom/avast/android/burger/internal/c/g;->a(Lcom/avast/android/burger/b/b;Landroid/content/Context;ZLcom/avast/android/burger/a/k;)V

    .line 90
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/evernote/android/job/a$a;)Lcom/evernote/android/job/a$b;
    .locals 4

    .prologue
    .line 51
    .line 1042
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    .line 1043
    if-eqz v0, :cond_0

    .line 1044
    invoke-interface {v0, p0}, Lcom/avast/android/burger/internal/a/k;->a(Lcom/avast/android/burger/internal/c/g;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/g;->a:Lcom/avast/android/burger/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/burger/internal/c/g;->b:Lcom/avast/android/burger/b/b;

    if-nez v0, :cond_2

    .line 53
    :cond_1
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Failed to run job with tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1382
    iget-object v2, p1, Lcom/evernote/android/job/a$a;->a:Lcom/evernote/android/job/i;

    .line 2142
    iget-object v2, v2, Lcom/evernote/android/job/i;->e:Lcom/evernote/android/job/i$b;

    .line 2474
    iget-object v2, v2, Lcom/evernote/android/job/i$b;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". DI failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/evernote/android/job/a$b;->b:Lcom/evernote/android/job/a$b;

    .line 56
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/avast/android/burger/internal/c/g;->a:Lcom/avast/android/burger/b;

    iget-object v1, p0, Lcom/avast/android/burger/internal/c/g;->b:Lcom/avast/android/burger/b/b;

    invoke-virtual {p0}, Lcom/avast/android/burger/internal/c/g;->c()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/avast/android/burger/internal/c/g;->a(Lcom/avast/android/burger/b;Lcom/avast/android/burger/b/b;Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/evernote/android/job/a$b;->a:Lcom/evernote/android/job/a$b;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/evernote/android/job/a$b;->b:Lcom/evernote/android/job/a$b;

    goto :goto_0
.end method
