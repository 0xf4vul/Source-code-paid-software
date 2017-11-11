.class final Lcom/piriform/ccleaner/i/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/i/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/i/i;

.field final synthetic b:Lcom/piriform/ccleaner/i/j;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/i/j;Lcom/piriform/ccleaner/i/i;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    iput-object p2, p0, Lcom/piriform/ccleaner/i/j$1;->a:Lcom/piriform/ccleaner/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/piriform/ccleaner/i/j;->b()V

    .line 163
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    invoke-static {p2}, Lcom/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/j;Lcom/a/a/a/a;)Lcom/a/a/a/a;

    .line 165
    :try_start_0
    invoke-static {}, Lcom/piriform/ccleaner/i/j;->b()V

    .line 168
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Lcom/piriform/ccleaner/i/j;)Lcom/a/a/a/a;

    move-result-object v0

    const/4 v1, 0x3

    const-string/jumbo v2, "com.piriform.ccleaner"

    const-string/jumbo v3, "inapp"

    invoke-interface {v0, v1, v2, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/piriform/ccleaner/i/j$1;->a:Lcom/piriform/ccleaner/i/i;

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->a(ILcom/piriform/ccleaner/i/i;)V

    .line 172
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/j;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string/jumbo v1, "Error "

    invoke-static {v1, v0}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->a:Lcom/piriform/ccleaner/i/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Lcom/piriform/ccleaner/i/i;)V

    goto :goto_0

    .line 175
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/piriform/ccleaner/i/j;->b()V

    .line 179
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Lcom/piriform/ccleaner/i/j;)Lcom/a/a/a/a;

    move-result-object v0

    const/4 v1, 0x5

    const-string/jumbo v2, "com.piriform.ccleaner"

    const-string/jumbo v3, "subs"

    invoke-interface {v0, v1, v2, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 180
    if-nez v0, :cond_2

    .line 181
    invoke-static {}, Lcom/piriform/ccleaner/i/j;->b()V

    .line 182
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->b(Lcom/piriform/ccleaner/i/j;Z)Z

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->c(Lcom/piriform/ccleaner/i/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/j;Z)Z

    .line 203
    :goto_2
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->d(Lcom/piriform/ccleaner/i/j;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->a:Lcom/piriform/ccleaner/i/i;

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->c(Lcom/piriform/ccleaner/i/i;)V

    goto :goto_0

    .line 184
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/piriform/ccleaner/i/j;->b()V

    .line 185
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->b(Lcom/piriform/ccleaner/i/j;Z)Z

    goto :goto_1

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    invoke-static {v0}, Lcom/piriform/ccleaner/i/j;->b(Lcom/piriform/ccleaner/i/j;)Lcom/a/a/a/a;

    move-result-object v0

    const/4 v1, 0x3

    const-string/jumbo v2, "com.piriform.ccleaner"

    const-string/jumbo v3, "subs"

    invoke-interface {v0, v1, v2, v3}, Lcom/a/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 193
    if-nez v0, :cond_4

    .line 194
    invoke-static {}, Lcom/piriform/ccleaner/i/j;->b()V

    .line 195
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/j;Z)Z

    goto :goto_2

    .line 197
    :cond_4
    invoke-static {}, Lcom/piriform/ccleaner/i/j;->b()V

    .line 198
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/j;Z)Z

    .line 199
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->b(Lcom/piriform/ccleaner/i/j;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/piriform/ccleaner/i/j;->b()V

    .line 154
    iget-object v0, p0, Lcom/piriform/ccleaner/i/j$1;->b:Lcom/piriform/ccleaner/i/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/piriform/ccleaner/i/j;->a(Lcom/piriform/ccleaner/i/j;Lcom/a/a/a/a;)Lcom/a/a/a/a;

    .line 155
    return-void
.end method
