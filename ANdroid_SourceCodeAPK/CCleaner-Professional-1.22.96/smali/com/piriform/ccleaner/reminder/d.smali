.class public final Lcom/piriform/ccleaner/reminder/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/piriform/ccleaner/n/a;

.field private final b:Lcom/piriform/ccleaner/alarm/c;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/alarm/c;Lcom/piriform/ccleaner/n/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/reminder/d;->b:Lcom/piriform/ccleaner/alarm/c;

    .line 26
    iput-object p2, p0, Lcom/piriform/ccleaner/reminder/d;->a:Lcom/piriform/ccleaner/n/a;

    .line 27
    return-void
.end method


# virtual methods
.method final a(JLcom/piriform/ccleaner/reminder/a;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 41
    .line 1052
    iget-object v0, p0, Lcom/piriform/ccleaner/reminder/d;->b:Lcom/piriform/ccleaner/alarm/c;

    sget-object v1, Lcom/piriform/ccleaner/alarm/g;->a:Lcom/piriform/ccleaner/alarm/g;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/alarm/c;->a(Lcom/piriform/ccleaner/alarm/d;)V

    .line 2048
    sget-object v0, Lcom/piriform/ccleaner/reminder/a;->a:Lcom/piriform/ccleaner/reminder/a;

    if-eq p3, v0, :cond_1

    const/4 v0, 0x1

    .line 43
    :goto_0
    if-eqz v0, :cond_0

    .line 3040
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget v1, p3, Lcom/piriform/ccleaner/reminder/a;->f:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 3056
    invoke-static {p1, p2}, Lcom/piriform/ccleaner/g;->a(J)Lcom/piriform/ccleaner/g;

    move-result-object v3

    .line 3057
    sget-object v4, Lcom/piriform/ccleaner/g;->a:Lcom/piriform/ccleaner/g;

    if-ne v3, v4, :cond_2

    .line 3058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 47
    :goto_1
    iget-object v3, p0, Lcom/piriform/ccleaner/reminder/d;->b:Lcom/piriform/ccleaner/alarm/c;

    sget-object v4, Lcom/piriform/ccleaner/alarm/g;->a:Lcom/piriform/ccleaner/alarm/g;

    invoke-static {v4}, Lcom/piriform/ccleaner/alarm/a;->a(Lcom/piriform/ccleaner/alarm/d;)Lcom/piriform/ccleaner/alarm/a$a;

    move-result-object v4

    .line 3092
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 4086
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v0, v4, Lcom/piriform/ccleaner/alarm/a$a;->a:Ljava/util/Date;

    .line 4087
    iput-boolean v2, v4, Lcom/piriform/ccleaner/alarm/a$a;->b:Z

    .line 47
    invoke-virtual {v4}, Lcom/piriform/ccleaner/alarm/a$a;->a()Lcom/piriform/ccleaner/alarm/a;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/piriform/ccleaner/alarm/c;->a(Lcom/piriform/ccleaner/alarm/a;)V

    .line 49
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 2048
    goto :goto_0

    .line 3060
    :cond_2
    add-long/2addr v0, p1

    goto :goto_1
.end method

.method public final a(Lcom/piriform/ccleaner/reminder/a;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/reminder/d;->a:Lcom/piriform/ccleaner/n/a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/n/a;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/piriform/ccleaner/reminder/d;->a(JLcom/piriform/ccleaner/reminder/a;)V

    .line 31
    return-void
.end method
