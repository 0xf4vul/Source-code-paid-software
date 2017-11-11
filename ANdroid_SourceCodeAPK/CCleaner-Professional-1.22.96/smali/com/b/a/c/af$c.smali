.class final Lcom/b/a/c/af$c;
.super Lc/a/a/a/a/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/c/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c/af;

.field private final b:F

.field private final c:Lcom/b/a/c/af$b;


# direct methods
.method constructor <init>(Lcom/b/a/c/af;FLcom/b/a/c/af$b;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/b/a/c/af$c;->a:Lcom/b/a/c/af;

    invoke-direct {p0}, Lc/a/a/a/a/b/h;-><init>()V

    .line 153
    iput p2, p0, Lcom/b/a/c/af$c;->b:F

    .line 154
    iput-object p3, p0, Lcom/b/a/c/af$c;->c:Lcom/b/a/c/af$b;

    .line 155
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    .line 160
    .line 1170
    :try_start_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Starting report processing in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/b/a/c/af$c;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " second(s)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget v0, p0, Lcom/b/a/c/af$c;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1175
    :try_start_1
    iget v0, p0, Lcom/b/a/c/af$c;->b:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1182
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/b/a/c/i;->f()Lcom/b/a/c/i;

    move-result-object v0

    .line 1648
    iget-object v3, v0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    .line 1184
    iget-object v0, p0, Lcom/b/a/c/af$c;->a:Lcom/b/a/c/af;

    invoke-virtual {v0}, Lcom/b/a/c/af;->a()Ljava/util/List;

    move-result-object v1

    .line 1186
    invoke-virtual {v3}, Lcom/b/a/c/h;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1191
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/b/a/c/af$c;->c:Lcom/b/a/c/af$b;

    invoke-interface {v0}, Lcom/b/a/c/af$b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1193
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "User declined to send. Removing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Report(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/ae;

    .line 1196
    invoke-interface {v0}, Lcom/b/a/c/ae;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/b/a/c/af$c;->a:Lcom/b/a/c/af;

    invoke-static {v0}, Lcom/b/a/c/af;->a(Lcom/b/a/c/af;)Ljava/lang/Thread;

    .line 167
    return-void

    .line 1177
    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1201
    :cond_2
    const/4 v0, 0x0

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 1202
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1203
    invoke-virtual {v3}, Lcom/b/a/c/h;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1216
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Attempting to send "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " report(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/ae;

    .line 1219
    iget-object v4, p0, Lcom/b/a/c/af$c;->a:Lcom/b/a/c/af;

    invoke-virtual {v4, v0}, Lcom/b/a/c/af;->a(Lcom/b/a/c/ae;)Z

    goto :goto_3

    .line 1223
    :cond_3
    iget-object v0, p0, Lcom/b/a/c/af$c;->a:Lcom/b/a/c/af;

    invoke-virtual {v0}, Lcom/b/a/c/af;->a()Ljava/util/List;

    move-result-object v2

    .line 1224
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1225
    invoke-static {}, Lcom/b/a/c/af;->b()[S

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    invoke-static {}, Lcom/b/a/c/af;->b()[S

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-short v1, v4, v1

    int-to-long v4, v1

    .line 1227
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Report submisson: scheduling delayed retry in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1231
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v1, v0

    move-object v0, v2

    .line 1235
    goto/16 :goto_2

    .line 1233
    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_4
    move-object v0, v2

    goto/16 :goto_2
.end method
