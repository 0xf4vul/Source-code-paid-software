.class public final Lcom/piriform/ccleaner/alarm/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/alarm/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/Date;

.field public b:Z

.field public c:Ljava/lang/String;

.field private final d:Lcom/piriform/ccleaner/alarm/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/alarm/d;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Alarm must have a recipient!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/piriform/ccleaner/alarm/a$a;->d:Lcom/piriform/ccleaner/alarm/d;

    .line 73
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;)Lcom/piriform/ccleaner/alarm/a$a;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/piriform/ccleaner/alarm/a$a;->a:Ljava/util/Date;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/alarm/a$a;->b:Z

    .line 78
    return-object p0
.end method

.method public final a()Lcom/piriform/ccleaner/alarm/a;
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/piriform/ccleaner/alarm/a$a;->a:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Alarm must have a date + time!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/alarm/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/a$a;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/piriform/ccleaner/alarm/a$a;->d:Lcom/piriform/ccleaner/alarm/d;

    iget-boolean v3, p0, Lcom/piriform/ccleaner/alarm/a$a;->b:Z

    iget-object v4, p0, Lcom/piriform/ccleaner/alarm/a$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/piriform/ccleaner/alarm/a;-><init>(Ljava/util/Date;Lcom/piriform/ccleaner/alarm/d;ZLjava/lang/String;)V

    return-object v0
.end method
