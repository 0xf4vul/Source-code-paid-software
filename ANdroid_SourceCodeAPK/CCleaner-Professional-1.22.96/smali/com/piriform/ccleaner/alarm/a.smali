.class public final Lcom/piriform/ccleaner/alarm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/alarm/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Date;

.field public final b:Lcom/piriform/ccleaner/alarm/d;

.field final c:Z

.field final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Date;Lcom/piriform/ccleaner/alarm/d;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/piriform/ccleaner/alarm/a;->a:Ljava/util/Date;

    .line 23
    iput-object p2, p0, Lcom/piriform/ccleaner/alarm/a;->b:Lcom/piriform/ccleaner/alarm/d;

    .line 24
    iput-boolean p3, p0, Lcom/piriform/ccleaner/alarm/a;->c:Z

    .line 25
    iput-object p4, p0, Lcom/piriform/ccleaner/alarm/a;->d:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/alarm/d;)Lcom/piriform/ccleaner/alarm/a$a;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/piriform/ccleaner/alarm/a$a;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/alarm/a$a;-><init>(Lcom/piriform/ccleaner/alarm/d;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/a;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Alarm{recipient="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/a;->b:Lcom/piriform/ccleaner/alarm/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/a;->a:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", exact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/piriform/ccleaner/alarm/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataForRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/alarm/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
