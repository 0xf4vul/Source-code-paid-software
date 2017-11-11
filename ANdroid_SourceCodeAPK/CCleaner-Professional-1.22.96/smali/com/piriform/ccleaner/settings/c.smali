.class public final Lcom/piriform/ccleaner/settings/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/settings/c$b;,
        Lcom/piriform/ccleaner/settings/c$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Lcom/piriform/ccleaner/settings/c$b;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/piriform/ccleaner/settings/c$a;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/piriform/ccleaner/settings/c$b;Ljava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide p1, p0, Lcom/piriform/ccleaner/settings/c;->a:J

    .line 83
    iput-object p3, p0, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/piriform/ccleaner/settings/c;->c:Lcom/piriform/ccleaner/settings/c$b;

    .line 85
    iput-object p5, p0, Lcom/piriform/ccleaner/settings/c;->d:Ljava/lang/String;

    .line 86
    iput-object p6, p0, Lcom/piriform/ccleaner/settings/c;->e:Lcom/piriform/ccleaner/settings/c$a;

    .line 87
    return-void
.end method

.method public static a(JLjava/lang/String;ZLjava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)Lcom/piriform/ccleaner/settings/c;
    .locals 8

    .prologue
    .line 76
    if-eqz p3, :cond_0

    sget-object v5, Lcom/piriform/ccleaner/settings/c$b;->b:Lcom/piriform/ccleaner/settings/c$b;

    .line 77
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/settings/c;

    move-wide v2, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/piriform/ccleaner/settings/c;-><init>(JLjava/lang/String;Lcom/piriform/ccleaner/settings/c$b;Ljava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)V

    return-object v1

    .line 76
    :cond_0
    sget-object v5, Lcom/piriform/ccleaner/settings/c$b;->a:Lcom/piriform/ccleaner/settings/c$b;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/settings/c;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 66
    new-instance v1, Lcom/piriform/ccleaner/settings/c;

    const-wide/16 v2, -0x1

    sget-object v5, Lcom/piriform/ccleaner/settings/c$b;->a:Lcom/piriform/ccleaner/settings/c$b;

    move-object v4, p0

    move-object v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/piriform/ccleaner/settings/c;-><init>(JLjava/lang/String;Lcom/piriform/ccleaner/settings/c$b;Ljava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)Lcom/piriform/ccleaner/settings/c;
    .locals 8

    .prologue
    .line 70
    new-instance v1, Lcom/piriform/ccleaner/settings/c;

    const-wide/16 v2, -0x1

    sget-object v5, Lcom/piriform/ccleaner/settings/c$b;->b:Lcom/piriform/ccleaner/settings/c$b;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/piriform/ccleaner/settings/c;-><init>(JLjava/lang/String;Lcom/piriform/ccleaner/settings/c$b;Ljava/lang/String;Lcom/piriform/ccleaner/settings/c$a;)V

    return-object v1
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 111
    .line 1103
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/c;->c:Lcom/piriform/ccleaner/settings/c$b;

    .line 111
    sget-object v1, Lcom/piriform/ccleaner/settings/c$b;->b:Lcom/piriform/ccleaner/settings/c$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/c;->d:Ljava/lang/String;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    .line 2099
    iget-object v0, p0, Lcom/piriform/ccleaner/settings/c;->b:Ljava/lang/String;

    .line 130
    return-object v0
.end method
