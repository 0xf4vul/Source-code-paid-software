.class public final Lcom/piriform/ccleaner/n/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/n/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/n/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/piriform/ccleaner/n/c;

.field public final b:Lcom/piriform/ccleaner/n/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/n/c;Lcom/piriform/ccleaner/n/d;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    .line 53
    iput-object p2, p0, Lcom/piriform/ccleaner/n/a;->b:Lcom/piriform/ccleaner/n/d;

    .line 54
    return-void
.end method

.method public static b(Lcom/piriform/ccleaner/a/h;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6218
    iget-object v1, p0, Lcom/piriform/ccleaner/a/h;->C:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ignore_user_data_risk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/a/h;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5027
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5218
    iget-object v1, p1, Lcom/piriform/ccleaner/a/h;->C:Ljava/lang/String;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "lastCleanTime"

    .line 2030
    iget-object v0, v0, Lcom/piriform/ccleaner/n/c;->a:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 103
    return-wide v0
.end method

.method public final a(Landroid/content/res/Resources;)Lcom/piriform/ccleaner/reminder/a;
    .locals 3

    .prologue
    .line 114
    .line 2155
    const v0, 0x7f08025e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    sget-object v0, Lcom/piriform/ccleaner/reminder/a;->e:Lcom/piriform/ccleaner/reminder/a;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/piriform/ccleaner/reminder/a;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/reminder/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "lastCleanTime"

    .line 2024
    iget-object v0, v0, Lcom/piriform/ccleaner/n/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2025
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2026
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/n/a$a;Lcom/piriform/ccleaner/core/a;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    invoke-static {p1}, Lcom/piriform/ccleaner/n/a$a;->a(Lcom/piriform/ccleaner/n/a$a;)Ljava/lang/String;

    move-result-object v1

    .line 1019
    iget v2, p2, Lcom/piriform/ccleaner/core/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/professional/m;)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "bgCleanCounter"

    .line 4035
    iget v2, p1, Lcom/piriform/ccleaner/professional/m;->g:I

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;I)V

    .line 146
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/a/h;)Z
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    .line 1218
    iget-object v1, p1, Lcom/piriform/ccleaner/a/h;->C:Ljava/lang/String;

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/a/h;)Z
    .locals 3

    .prologue
    .line 81
    invoke-static {p1, p2}, Lcom/piriform/ccleaner/n/a;->b(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/a/h;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    invoke-virtual {p2, p1}, Lcom/piriform/ccleaner/a/h;->a(Lcom/piriform/ccleaner/cleaning/g;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/piriform/ccleaner/professional/m;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/piriform/ccleaner/n/a;->a:Lcom/piriform/ccleaner/n/c;

    const-string/jumbo v1, "bgCleanCounter"

    sget-object v2, Lcom/piriform/ccleaner/professional/m;->f:Lcom/piriform/ccleaner/professional/m;

    .line 3035
    iget v2, v2, Lcom/piriform/ccleaner/professional/m;->g:I

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;I)I

    move-result v0

    .line 140
    invoke-static {v0}, Lcom/piriform/ccleaner/professional/m;->a(I)Lcom/piriform/ccleaner/professional/m;

    move-result-object v0

    return-object v0
.end method
